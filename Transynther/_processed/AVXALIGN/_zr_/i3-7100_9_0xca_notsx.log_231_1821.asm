.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xeff2, %r8
nop
nop
nop
nop
xor %rbp, %rbp
mov (%r8), %r9w
nop
nop
nop
nop
sub $53122, %rdi
lea addresses_WT_ht+0x4742, %r8
nop
nop
nop
nop
nop
and $35318, %rsi
mov $0x6162636465666768, %r9
movq %r9, (%r8)
nop
add $3978, %r9
lea addresses_A_ht+0x4f2e, %rbx
clflush (%rbx)
nop
nop
nop
sub $28293, %r11
vmovups (%rbx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r8
nop
xor $3244, %r9
lea addresses_UC_ht+0x17242, %rsi
nop
nop
nop
nop
add %r11, %r11
mov (%rsi), %r9w
nop
nop
dec %rdi
lea addresses_A_ht+0xf77c, %rsi
nop
add $42524, %rbp
vmovups (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdi
nop
nop
dec %r11
lea addresses_A_ht+0x24a, %rsi
lea addresses_UC_ht+0x5bc2, %rdi
lfence
mov $127, %rcx
rep movsw
nop
nop
nop
sub $16643, %rbx
lea addresses_WC_ht+0x1bdc2, %rsi
lea addresses_WT_ht+0x142, %rdi
nop
nop
cmp %r9, %r9
mov $96, %rcx
rep movsb
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x9722, %rsi
lea addresses_WC_ht+0xcfc2, %rdi
and $51527, %rbx
mov $25, %rcx
rep movsw
cmp $61425, %r11
lea addresses_A_ht+0x6852, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
and $57833, %r11
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%rbx)
and $38885, %r9
lea addresses_WT_ht+0x12bc2, %r11
nop
nop
nop
cmp $38411, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm3
movups %xmm3, (%r11)
sub $18943, %r8
lea addresses_A_ht+0x15cc2, %rdi
nop
nop
nop
nop
nop
xor %r8, %r8
mov (%rdi), %cx
xor $62651, %rbx
lea addresses_normal_ht+0xc2c2, %rcx
nop
xor %r8, %r8
movb (%rcx), %r11b
inc %rdi
lea addresses_D_ht+0x4712, %rbx
nop
nop
nop
nop
cmp %r9, %r9
mov $0x6162636465666768, %rbp
movq %rbp, %xmm5
and $0xffffffffffffffc0, %rbx
vmovaps %ymm5, (%rbx)
nop
nop
nop
nop
nop
and $19299, %r8
lea addresses_A_ht+0x14fc2, %rcx
clflush (%rcx)
nop
and %rsi, %rsi
movl $0x61626364, (%rcx)
nop
nop
inc %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rbp
push %rbx
push %rdx
push %rsi

// Load
lea addresses_PSE+0x146c2, %r11
nop
nop
inc %rbx
mov (%r11), %r9w
nop
nop
nop
nop
nop
inc %rdx

// Store
lea addresses_normal+0xdbc2, %rbp
nop
nop
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
movups %xmm0, (%rbp)
nop
inc %rdx

// Faulty Load
lea addresses_US+0x27c2, %r14
add %rdx, %rdx
mov (%r14), %r11
lea oracles, %rsi
and $0xff, %r11
shlq $12, %r11
mov (%rsi,%r11,1), %r11
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}}
{'00': 231}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
