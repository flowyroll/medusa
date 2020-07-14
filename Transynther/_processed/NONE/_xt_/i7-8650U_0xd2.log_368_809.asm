.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x170d7, %r13
nop
nop
nop
nop
nop
sub $31430, %rbx
mov $0x6162636465666768, %r10
movq %r10, %xmm2
vmovups %ymm2, (%r13)
nop
nop
and $13645, %r13
lea addresses_WC_ht+0x2477, %rcx
nop
nop
nop
nop
add %rbp, %rbp
mov $0x6162636465666768, %rdx
movq %rdx, %xmm0
vmovups %ymm0, (%rcx)
inc %r10
lea addresses_WT_ht+0x1e417, %r13
dec %r12
and $0xffffffffffffffc0, %r13
vmovntdqa (%r13), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbx
nop
nop
nop
xor $14820, %rbp
lea addresses_D_ht+0x141d7, %rsi
lea addresses_normal_ht+0x4dd7, %rdi
clflush (%rsi)
add %r13, %r13
mov $15, %rcx
rep movsl
and %r10, %r10
lea addresses_A_ht+0x1d1ef, %rdx
nop
and %rdi, %rdi
vmovups (%rdx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r13
nop
nop
nop
inc %rbx
lea addresses_D_ht+0x10937, %rsi
lea addresses_normal_ht+0x14747, %rdi
clflush (%rdi)
nop
nop
add %rbx, %rbx
mov $118, %rcx
rep movsq
nop
xor $40529, %rdi
lea addresses_A_ht+0xd157, %rsi
lea addresses_D_ht+0x2d57, %rdi
nop
and $48657, %r12
mov $48, %rcx
rep movsb
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0x31d7, %rbp
nop
nop
nop
nop
cmp $23385, %rdx
movups (%rbp), %xmm6
vpextrq $0, %xmm6, %rbx
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_WC_ht+0x957, %rbx
sub %r13, %r13
movw $0x6162, (%rbx)
add $43198, %r12
lea addresses_normal_ht+0x3bd7, %r12
cmp $50310, %rdi
movb $0x61, (%r12)
nop
nop
nop
sub $32319, %r10
lea addresses_normal_ht+0x19f57, %rsi
lea addresses_WC_ht+0x2dd7, %rdi
nop
nop
nop
nop
add $35063, %r10
mov $74, %rcx
rep movsw
nop
nop
cmp %r12, %r12
lea addresses_A_ht+0x83c7, %rsi
lea addresses_D_ht+0x124bf, %rdi
nop
nop
nop
inc %r10
mov $1, %rcx
rep movsw
nop
dec %r12
lea addresses_D_ht+0x1a42f, %rsi
lea addresses_A_ht+0x1b9d7, %rdi
nop
nop
nop
nop
add %rdx, %rdx
mov $40, %rcx
rep movsb
nop
add $59269, %rbp
lea addresses_normal_ht+0x19dd7, %rdx
clflush (%rdx)
nop
nop
sub %rcx, %rcx
movw $0x6162, (%rdx)
nop
nop
nop
cmp $57558, %rcx
lea addresses_D_ht+0x39d7, %r13
nop
nop
cmp %r12, %r12
movb $0x61, (%r13)
nop
nop
nop
nop
cmp $26851, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r8
push %rdx
push %rsi

// Store
lea addresses_WC+0xfc17, %r14
xor %rsi, %rsi
mov $0x5152535455565758, %r8
movq %r8, %xmm7
movups %xmm7, (%r14)
nop
nop
sub %r14, %r14

// Load
lea addresses_PSE+0x39d7, %r11
nop
and %r8, %r8
vmovups (%r11), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r13
nop
nop
nop
nop
nop
add $31189, %r11

// Faulty Load
lea addresses_PSE+0x1f9d7, %r11
sub $19003, %r12
vmovups (%r11), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r14
lea oracles, %r8
and $0xff, %r14
shlq $12, %r14
mov (%r8,%r14,1), %r14
pop %rsi
pop %rdx
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': True}}
{'33': 368}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
