.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xe2be, %rsi
lea addresses_A_ht+0x33e6, %rdi
nop
nop
nop
nop
dec %r10
mov $79, %rcx
rep movsq
nop
nop
cmp $43657, %r10
lea addresses_UC_ht+0x118de, %r9
nop
nop
nop
nop
sub %r14, %r14
vmovups (%r9), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
nop
xor $54036, %rsi
lea addresses_normal_ht+0x1b106, %r9
nop
and %r13, %r13
movb $0x61, (%r9)
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_UC_ht+0x18d16, %rcx
nop
xor %rsi, %rsi
mov (%rcx), %r14
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_D_ht+0x17a48, %r10
nop
nop
nop
nop
cmp %r9, %r9
mov (%r10), %edi
cmp %r10, %r10
lea addresses_A_ht+0x21be, %r10
nop
nop
nop
dec %rsi
mov (%r10), %edi
add $61320, %r14
lea addresses_D_ht+0x4efe, %r9
clflush (%r9)
nop
nop
nop
and $28789, %rdi
movw $0x6162, (%r9)
inc %rsi
lea addresses_normal_ht+0xae5e, %rdi
nop
sub $20769, %r9
mov (%rdi), %rcx
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x137be, %rsi
nop
nop
nop
nop
nop
add $3798, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
and $0xffffffffffffffc0, %rsi
vmovntdq %ymm2, (%rsi)
nop
nop
nop
add %r14, %r14
lea addresses_normal_ht+0x25c, %rdi
nop
nop
nop
nop
nop
add $29038, %rcx
movups (%rdi), %xmm5
vpextrq $1, %xmm5, %rsi
dec %r10
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r9
push %rax
push %rbx

// Store
lea addresses_US+0x6b2e, %rbx
nop
nop
nop
nop
sub $9889, %r14
mov $0x5152535455565758, %r10
movq %r10, (%rbx)
nop
nop
nop
nop
nop
inc %r9

// Faulty Load
lea addresses_A+0xbbe, %r9
nop
nop
nop
cmp %r11, %r11
mov (%r9), %rax
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': True, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'53': 57, '47': 752, '3c': 645, 'e8': 1, '80': 105, 'c0': 430, '5d': 102, 'ff': 4358, 'de': 730, '9f': 200, '46': 135, 'a8': 3, '45': 156, '00': 9439, '44': 4601, 'e0': 115}
ff 44 00 de c0 00 44 00 00 ff ff ff 44 53 44 00 00 ff ff ff ff 00 00 00 44 ff ff ff 44 00 3c 00 00 00 00 ff 44 47 00 44 00 00 44 47 00 00 00 ff 00 ff ff 44 ff ff ff ff 44 47 00 00 00 00 44 44 44 00 00 44 00 00 ff ff ff ff ff 00 00 ff ff c0 47 00 ff ff 44 44 00 00 00 ff ff 44 00 ff ff ff 47 00 44 ff de c0 00 44 de ff 44 44 00 e0 00 00 de 44 00 de ff 00 44 c0 00 00 00 00 44 ff ff 44 00 00 47 de 00 44 00 00 00 44 00 ff 00 de 00 00 47 44 44 de de 00 00 00 44 de 00 00 00 00 44 44 00 44 00 ff 00 ff 00 44 ff 00 00 44 e0 ff ff ff 00 44 00 00 00 00 44 00 ff 00 00 ff de 00 00 00 00 00 00 00 00 00 c0 00 00 ff 00 00 00 44 00 ff ff de 00 00 ff ff c0 ff 44 e0 ff ff 00 00 47 00 44 ff 00 00 ff 44 ff 47 44 00 ff 00 00 00 00 44 44 c0 00 44 00 44 ff 00 ff ff ff ff 00 00 00 00 00 00 44 44 00 ff 44 45 44 ff 00 00 44 00 00 00 ff ff 47 00 00 44 ff 47 47 44 ff ff ff 9f 00 9f 00 00 3c 00 44 00 ff ff 3c 00 44 44 44 44 00 00 00 00 00 ff 44 44 3c 44 00 9f 00 00 5d 00 00 00 00 00 00 44 44 ff 44 ff 44 44 ff 00 ff 00 00 00 00 ff 00 00 ff 44 44 00 00 00 ff 00 ff ff ff 00 00 45 00 00 00 ff ff ff 44 44 00 00 ff 00 00 ff 3c 00 44 00 00 00 47 44 44 00 00 00 00 00 47 ff ff e0 44 00 ff 00 46 00 00 00 ff 44 44 00 00 ff ff ff 47 44 00 ff de 00 44 44 c0 00 00 00 ff ff 44 44 44 e0 44 00 44 ff de 00 00 00 00 44 00 44 00 c0 00 00 ff c0 00 ff ff 00 00 00 44 00 46 00 00 00 ff 44 44 00 44 ff 00 ff ff ff 45 00 00 00 44 3c ff 44 00 00 3c 44 ff 3c 00 00 00 00 00 44 3c 00 00 00 44 00 00 44 ff 9f 44 44 ff 44 44 00 00 00 00 00 44 44 ff ff ff ff 00 44 44 00 ff 44 00 00 ff 44 00 ff ff 00 ff 44 00 00 00 00 44 00 00 00 de 00 44 ff de 00 44 44 44 00 44 00 44 00 de 00 e0 00 00 00 00 ff ff ff ff 00 00 00 44 46 00 00 00 00 00 44 00 00 44 00 44 ff 47 47 44 44 00 00 00 00 44 00 00 00 00 00 ff 44 ff 00 00 3c 47 44 ff 44 00 00 00 00 00 47 00 44 00 ff ff 3c 45 00 9f 00 44 00 00 ff 53 00 ff 44 5d 00 ff ff 3c ff 3c 44 ff ff 00 44 00 ff 00 45 00 00 00 3c 00 44 00 ff 9f 3c 00 00 00 00 44 de 00 ff 00 44 ff ff ff 44 00 44 c0 00 00 ff 44 00 00 ff 44 00 00 44 ff ff 00 ff ff 00 44 00 00 de 00 ff ff 00 00 00 ff 47 00 ff ff 00 80 00 00 de de 46 44 44 00 00 00 00 00 44 80 ff ff c0 00 44 00 00 de c0 de c0 ff 00 47 de 44 00 44 00 de 00 44 44 44 00 00 ff 00 00 ff 44 00 ff ff 00 00 44 00 00 00 ff 46 46 80 ff 00 00 00 e0 44 44 e0 44 00 ff 00 00 de 00 00 ff ff 44 ff 00 44 00 00 de 00 47 00 00 00 44 de 00 44 00 c0 44 de 00 00 00 00 ff 44 44 44 00 de 00 00 44 00 00 ff 00 00 ff 47 ff 44 44 ff ff ff ff 00 00 00 00 00 46 00 00 44 00 44 44 00 00 00 ff 44 00 00 de 44 44 46 44 00 00 de 00 00 47 80 00 44 ff 00 44 ff 00 44 ff 00 00 44 44 ff ff 44 00 de 00 c0 00 44 47 ff ff ff de e0 ff 00 00 00 00 00 44 00 de ff 00 00 44 44 44 00 00 de 44 44 44 00 ff 44 44 ff ff 00 ff 00 00 ff 3c 44 00 3c 00 00 9f 00 3c 44 00 3c 00 00 00 00 44 ff ff 44 00 00 44 ff 3c 00 00 00 ff 44 00 00 47 00 ff ff 44 47 00 ff 44 00 00 44 47 ff 00 44 3c 47 ff ff 44 00 00 00 00 00 44 44 00 ff ff 00 3c 00 00 ff 47 00 00 9f 44 00 ff 47 47 00 3c 00 00 00 44 00 00 45 00 00 44
*/
