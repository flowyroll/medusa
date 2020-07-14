.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x16819, %rsi
nop
nop
nop
nop
sub $22005, %rbx
mov $0x6162636465666768, %r11
movq %r11, (%rsi)
nop
nop
sub %rax, %rax
lea addresses_normal_ht+0x1671d, %r11
nop
nop
nop
nop
nop
add %rcx, %rcx
movb (%r11), %dl
nop
sub %rax, %rax
lea addresses_WC_ht+0x1d7d9, %rax
nop
nop
cmp $63814, %r15
movb $0x61, (%rax)
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0x196d9, %rax
nop
nop
nop
sub $7781, %rcx
movups (%rax), %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x72c9, %rsi
lea addresses_A_ht+0x1dd9, %rdi
nop
nop
nop
cmp %rbx, %rbx
mov $25, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $58634, %rdx
lea addresses_normal_ht+0xa5dc, %rcx
nop
dec %rdx
mov (%rcx), %r15w
nop
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_UC_ht+0xbd7, %rbx
clflush (%rbx)
nop
nop
nop
nop
and $2175, %rax
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
and $0xffffffffffffffc0, %rbx
movaps %xmm4, (%rbx)
nop
nop
nop
xor %rdx, %rdx
lea addresses_UC_ht+0x163a9, %rax
nop
nop
nop
inc %rcx
movl $0x61626364, (%rax)
nop
sub %rax, %rax
lea addresses_normal_ht+0x1d059, %rax
nop
cmp %rdx, %rdx
movups (%rax), %xmm1
vpextrq $0, %xmm1, %rbx
sub $44186, %r15
lea addresses_D_ht+0x1ac83, %rax
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x6162636465666768, %rbx
movq %rbx, (%rax)
nop
nop
sub %r11, %r11
lea addresses_WT_ht+0x1d749, %rsi
lea addresses_D_ht+0x18f09, %rdi
nop
nop
dec %rbx
mov $97, %rcx
rep movsw
nop
nop
nop
nop
sub $1330, %rbx
lea addresses_normal_ht+0x3fd9, %rsi
lea addresses_A_ht+0xd219, %rdi
xor %r11, %r11
mov $80, %rcx
rep movsq
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WC_ht+0xa5d9, %rsi
lea addresses_WT_ht+0x18319, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor %rax, %rax
mov $47, %rcx
rep movsw
nop
nop
nop
nop
lfence
lea addresses_UC_ht+0x14a1d, %rsi
lea addresses_WT_ht+0x1a7d9, %rdi
nop
add $2926, %r11
mov $79, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %r9
push %rbp
push %rdx
push %rsi

// Store
lea addresses_normal+0x136d9, %rdx
and $43897, %r8
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%rdx)
cmp %rsi, %rsi

// Load
lea addresses_PSE+0x16dd9, %r9
xor $60960, %rbp
mov (%r9), %r10
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_WC+0x7051, %rdx
nop
sub %r11, %r11
mov $0x5152535455565758, %r10
movq %r10, (%rdx)
nop
nop
nop
nop
nop
dec %rbp

// Faulty Load
lea addresses_PSE+0x16dd9, %r11
nop
nop
nop
sub $32249, %rbp
movntdqa (%r11), %xmm4
vpextrq $0, %xmm4, %r10
lea oracles, %rbp
and $0xff, %r10
shlq $12, %r10
mov (%rbp,%r10,1), %r10
pop %rsi
pop %rdx
pop %rbp
pop %r9
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': True}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
