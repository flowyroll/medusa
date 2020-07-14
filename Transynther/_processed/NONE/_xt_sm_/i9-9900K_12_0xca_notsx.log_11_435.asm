.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x8c1e, %r12
inc %rbx
movb $0x61, (%r12)
nop
nop
nop
xor %r13, %r13
lea addresses_WT_ht+0x8e1e, %rdx
nop
nop
nop
nop
add $9542, %r13
mov (%rdx), %r9
nop
nop
nop
nop
nop
and $2792, %rbx
lea addresses_WT_ht+0x1ae9e, %rdx
nop
nop
nop
xor $33541, %r14
mov $0x6162636465666768, %r13
movq %r13, %xmm0
vmovups %ymm0, (%rdx)
nop
nop
and $18328, %r9
lea addresses_A_ht+0xff9e, %r12
nop
nop
nop
sub $27910, %rcx
movb $0x61, (%r12)
nop
nop
nop
nop
cmp $55101, %rdx
lea addresses_normal_ht+0x18e1e, %rsi
lea addresses_UC_ht+0x48c2, %rdi
clflush (%rsi)
nop
nop
nop
nop
cmp $44835, %r14
mov $55, %rcx
rep movsw
nop
nop
nop
add $59427, %r14
lea addresses_UC_ht+0x1c51e, %r13
nop
nop
nop
nop
nop
and %rdi, %rdi
movb $0x61, (%r13)
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x1351e, %rbx
nop
nop
nop
nop
dec %r14
movl $0x61626364, (%rbx)
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_D_ht+0xa54c, %rsi
lea addresses_UC_ht+0x9ade, %rdi
nop
nop
nop
add %r12, %r12
mov $14, %rcx
rep movsb
nop
nop
nop
nop
nop
add $51191, %rdi
lea addresses_WC_ht+0x15882, %rdi
nop
nop
nop
cmp $33260, %rsi
and $0xffffffffffffffc0, %rdi
vmovntdqa (%rdi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r12
nop
nop
inc %r12
lea addresses_WC_ht+0x18e32, %rdx
nop
nop
nop
nop
sub %r9, %r9
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
and $0xffffffffffffffc0, %rdx
vmovntdq %ymm6, (%rdx)
nop
cmp %r9, %r9
lea addresses_WT_ht+0x3d9e, %rdx
nop
nop
nop
nop
cmp $23708, %rbx
mov (%rdx), %r9w
nop
xor %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rbx
push %rdi
push %rdx

// Store
lea addresses_WC+0x17f1e, %rbx
nop
nop
nop
xor $295, %rdx
mov $0x5152535455565758, %r15
movq %r15, (%rbx)
nop
nop
inc %rbx

// Store
lea addresses_RW+0x14e1e, %r9
nop
and %rdi, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, (%r9)
nop
nop
nop
nop
add $21268, %rbx

// Store
mov $0xa1e, %r9
nop
add $56987, %r15
movw $0x5152, (%r9)
nop
nop
nop
inc %r15

// Store
mov $0x81e, %rbx
nop
nop
sub %r11, %r11
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
and $24733, %r11

// Load
lea addresses_A+0x19d7a, %r14
nop
nop
add %r11, %r11
mov (%r14), %r9d
nop
nop
nop
nop
xor $1313, %rbx

// Faulty Load
lea addresses_RW+0x14e1e, %rdx
nop
nop
sub %r11, %r11
mov (%rdx), %r9
lea oracles, %r14
and $0xff, %r9
shlq $12, %r9
mov (%r14,%r9,1), %r9
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': True, 'AVXalign': True, 'size': 2, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'58': 11}
58 58 58 58 58 58 58 58 58 58 58
*/
