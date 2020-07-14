.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1d143, %rsi
clflush (%rsi)
nop
nop
nop
cmp %r12, %r12
movb $0x61, (%rsi)
add $50342, %rsi
lea addresses_UC_ht+0x361f, %rcx
nop
sub %rsi, %rsi
movups (%rcx), %xmm0
vpextrq $0, %xmm0, %rbp
nop
and %rsi, %rsi
lea addresses_UC_ht+0x1fdf, %rsi
lea addresses_A_ht+0x3f5f, %rdi
nop
nop
nop
dec %r15
mov $51, %rcx
rep movsb
add %rdx, %rdx
lea addresses_normal_ht+0x5f97, %rsi
lea addresses_D_ht+0xf65f, %rdi
nop
nop
add $47128, %rbx
mov $65, %rcx
rep movsw
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0x10953, %rbx
nop
nop
nop
xor $38663, %rdx
movb $0x61, (%rbx)
nop
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rbp
push %rbx
push %rdi
push %rsi

// Load
lea addresses_A+0x4777, %rbx
nop
nop
xor %rdi, %rdi
vmovups (%rbx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rsi
nop
nop
nop
nop
nop
and %rbp, %rbp

// Store
lea addresses_PSE+0x17fdf, %rsi
clflush (%rsi)
nop
nop
nop
and %r15, %r15
mov $0x5152535455565758, %rbp
movq %rbp, (%rsi)
nop
nop
nop
nop
add $12767, %rsi

// Faulty Load
lea addresses_PSE+0x17fdf, %rdi
add %r15, %r15
movntdqa (%rdi), %xmm3
vpextrq $0, %xmm3, %rbp
lea oracles, %r15
and $0xff, %rbp
shlq $12, %rbp
mov (%r15,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'00': 7191, '58': 957}
00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 00 00 58 00 58 00 58 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 58 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 58 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 58 00 00 00 00 00 58 00 00 00 00 58 00 00 58 00 00 58 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 58 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 58 00 58 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 58 00 00 58 00 00 00 00 00 00 00 58 00 00 00 00 00 58 00 00 00 00 00 58 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 58 58 00 58 00 58 58 00 00 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 58 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 58 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 58 00 00 58 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 58 58 00 58 00 00 58 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 00 00 00 00 00 00 00 58 00 58 58 00 00 58 00 58 58 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 00 00 58 58 00 00 58 00 00 00 00 00 58 00 00 00 58 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 58 00 00 58 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 58 00 00 00 58 58 00 00 00 00 58 00 00 00 00 00 00 00 00 58 00 00 58 00 58 58 00 00 00 00 58 00 00 00 00 58 00 00 58 00 00 00 00 00 00 58 00 00 00 58 58 00 00 58 00 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 00 58 00 00 00 00 00 58 00 00 00 00 00 00 58 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 58 00 00 00 00 58 00 00 00 00 58 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 58 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 58 00 58 00 00 00 00 00 00 00 00 58 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 58 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00
*/
