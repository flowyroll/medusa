.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1c97c, %rsi
lea addresses_normal_ht+0x1bd8c, %rdi
nop
nop
nop
cmp $59522, %r13
mov $122, %rcx
rep movsq
nop
nop
nop
and %rbx, %rbx
lea addresses_UC_ht+0x1e094, %rsi
lea addresses_normal_ht+0x1aad4, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
xor $41723, %r10
mov $97, %rcx
rep movsl
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x2d39, %rdi
nop
nop
nop
nop
nop
add %r13, %r13
movl $0x61626364, (%rdi)
nop
nop
sub $63903, %rdi
lea addresses_UC_ht+0x530c, %r13
nop
dec %rdi
movl $0x61626364, (%r13)
nop
nop
nop
nop
nop
dec %r13
lea addresses_D_ht+0x404, %rsi
lea addresses_WT_ht+0x97cc, %rdi
nop
nop
nop
nop
sub $46713, %r11
mov $109, %rcx
rep movsb
nop
nop
nop
nop
sub $25791, %r10
lea addresses_normal_ht+0x17394, %rsi
nop
nop
nop
nop
dec %r10
movb $0x61, (%rsi)
nop
sub %r10, %r10
lea addresses_WT_ht+0xcd94, %rsi
lea addresses_A_ht+0x1c754, %rdi
nop
nop
cmp %r15, %r15
mov $2, %rcx
rep movsb
nop
nop
nop
inc %rsi
lea addresses_UC_ht+0x11891, %r13
add %r11, %r11
mov (%r13), %r15w
nop
nop
nop
nop
nop
add $32664, %rsi
lea addresses_WC_ht+0xb594, %rcx
nop
nop
nop
nop
xor %r15, %r15
mov (%rcx), %ebx
nop
nop
nop
nop
nop
inc %r11
lea addresses_normal_ht+0x2b74, %rbx
nop
nop
xor $65399, %r15
mov (%rbx), %rdi
nop
nop
nop
nop
nop
and %r15, %r15
lea addresses_WT_ht+0x9194, %rsi
lea addresses_normal_ht+0x18994, %rdi
clflush (%rdi)
nop
nop
cmp %rbx, %rbx
mov $8, %rcx
rep movsb
nop
add %r15, %r15
lea addresses_UC_ht+0xa594, %r10
dec %r11
mov $0x6162636465666768, %r15
movq %r15, %xmm2
movups %xmm2, (%r10)
nop
xor %r15, %r15
lea addresses_A_ht+0xb994, %rsi
clflush (%rsi)
nop
nop
sub $56680, %rbx
mov $0x6162636465666768, %r15
movq %r15, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x145ec, %rbx
nop
inc %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm7
and $0xffffffffffffffc0, %rbx
vmovntdq %ymm7, (%rbx)
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x16294, %r13
clflush (%r13)
nop
nop
nop
cmp $17793, %rsi
mov (%r13), %r15w
nop
nop
sub $9207, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %r9
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_WT+0x3894, %r8
nop
nop
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
movups %xmm4, (%r8)
nop
nop
xor %r9, %r9

// Store
lea addresses_WC+0xbb94, %rcx
nop
nop
nop
and $58549, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
movups %xmm5, (%rcx)
nop
nop
nop
cmp %rbx, %rbx

// Load
lea addresses_PSE+0xdaf4, %r9
nop
nop
nop
and %rsi, %rsi
mov (%r9), %cx
nop
nop
nop
nop
nop
xor %r9, %r9

// Faulty Load
mov $0x72d53d0000000194, %rbx
nop
nop
nop
nop
nop
cmp $40780, %r10
vmovups (%rbx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdx
lea oracles, %rbx
and $0xff, %rdx
shlq $12, %rdx
mov (%rbx,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': True, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'46': 6677, '49': 200, '00': 14947, '01': 4, '34': 1}
49 00 46 00 00 00 00 00 46 46 00 00 00 00 00 00 46 46 46 46 00 00 00 46 00 00 00 00 46 00 00 00 00 46 46 00 00 00 00 46 46 00 00 00 00 00 00 46 46 00 00 00 00 00 46 46 46 49 00 00 00 00 46 49 00 00 00 00 46 46 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 46 46 00 00 00 00 00 46 46 46 00 00 00 46 46 00 00 00 00 00 46 00 00 00 00 46 46 00 00 00 00 00 46 46 49 00 00 00 00 46 46 46 00 00 00 00 46 46 00 00 00 00 46 46 00 00 00 00 00 46 00 00 00 00 46 46 00 00 00 00 00 46 46 46 46 00 00 00 46 00 00 00 00 46 46 49 00 00 00 46 46 00 00 00 00 46 46 00 00 00 00 00 46 46 46 49 46 00 00 00 46 46 49 00 00 00 46 46 46 00 00 00 00 00 46 46 00 00 00 00 46 46 49 00 00 00 46 46 46 00 00 00 00 46 46 00 00 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 46 49 00 00 00 00 46 46 00 00 00 46 46 46 00 00 00 46 46 00 00 00 00 00 46 46 49 00 00 00 00 46 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 46 00 00 00 00 46 46 00 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 46 46 00 00 00 00 00 00 46 46 00 00 00 00 00 46 00 00 00 46 46 00 00 00 00 46 46 00 00 00 00 46 46 00 00 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 00 46 46 00 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 46 46 46 00 00 00 00 00 46 00 00 00 00 46 46 00 00 00 00 00 46 00 00 00 00 46 46 46 00 00 00 00 00 00 46 46 00 00 00 00 00 46 46 46 00 00 00 00 46 46 00 00 00 00 46 46 00 00 00 00 46 46 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 46 00 00 00 00 46 46 00 00 00 00 00 46 46 46 00 00 00 00 46 46 46 00 00 00 46 46 46 00 00 00 46 46 49 00 00 00 00 46 46 00 00 00 00 46 46 00 00 00 00 46 46 00 00 00 00 00 46 46 46 00 00 00 46 00 00 00 00 46 46 46 00 00 00 00 46 46 00 00 00 00 46 46 46 00 00 00 46 46 46 00 00 00 00 00 46 00 00 00 00 46 46 00 00 00 00 46 46 00 00 00 00 46 00 00 00 00 46 46 00 00 00 00 46 46 00 00 00 00 46 46 00 00 00 00 46 46 46 00 00 00 00 00 00 46 00 00 00 00 00 46 49 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 46 46 00 00 00 00 46 46 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 46 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 46 49 00 00 00 46 46 49 00 00 00 00 46 46 49 00 00 00 00 46 46 00 00 00 00 00 00 46 46 00 00 00 00 46 46 00 00 00 00 46 46 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 46 46 46 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 46 46 00 00 00 00 46 46 46 00 00 00 00 00 46 46 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 00 46 46 46 00 00 00 00 00 46 00 00 00 00 46 46 00 00 00 00 00 00 46 46 00 00 00 00 00 00 46 46 00 00 00 00 46 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 46 46 46 00 00 00 46 00 00 00 00 46 46 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 46 00 00 00 00 46 46 00 00 00 00 00 46 46 46 00 00 00 46 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 46 46 00 00 00 00 00 46 46 46 00 00 00 46 46 46 46 00 00 00 00 00 00 46 46 00 00 00 00 46 46 00 00 00 00 46
*/
