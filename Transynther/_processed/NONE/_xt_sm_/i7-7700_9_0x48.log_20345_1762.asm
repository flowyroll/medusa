.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1431c, %r12
nop
nop
nop
cmp $58893, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%r12)
nop
nop
nop
nop
nop
inc %rbx
lea addresses_D_ht+0xa3bc, %rsi
lea addresses_D_ht+0x137c, %rdi
nop
nop
nop
nop
nop
cmp %r12, %r12
mov $17, %rcx
rep movsl
add $64388, %r12
lea addresses_D_ht+0x963c, %rsi
nop
nop
nop
nop
add %r12, %r12
movb (%rsi), %bl
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x737c, %rsi
lea addresses_UC_ht+0x1d220, %rdi
nop
nop
cmp $48644, %r13
mov $17, %rcx
rep movsw
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x7a7c, %r12
nop
nop
nop
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %r13
movq %r13, (%r12)
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0x14b7c, %rbx
and %rsi, %rsi
vmovups (%rbx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r13
nop
nop
nop
nop
nop
cmp $41031, %rdi
lea addresses_normal_ht+0x8e4c, %rcx
nop
nop
nop
add %rbx, %rbx
movups (%rcx), %xmm5
vpextrq $0, %xmm5, %r13
nop
cmp $57586, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r9
push %rbp
push %rbx
push %rdi

// Store
lea addresses_WT+0x437c, %r9
nop
nop
nop
nop
and $14568, %rbx
movw $0x5152, (%r9)
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_PSE+0x1f7c, %r15
nop
nop
nop
add $43998, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
movups %xmm4, (%r15)
nop
nop
nop
nop
nop
add $22732, %r10

// Store
lea addresses_WC+0x1bb7c, %r10
nop
nop
nop
dec %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm7
movups %xmm7, (%r10)
nop
nop
nop
nop
inc %r15

// Load
lea addresses_WT+0x437c, %rbp
add %r12, %r12
movb (%rbp), %r15b
sub $13406, %r15

// Load
lea addresses_UC+0x14f7c, %rbx
nop
nop
nop
nop
xor %r12, %r12
movb (%rbx), %r15b
nop
nop
nop
nop
sub $25122, %rbp

// Load
lea addresses_UC+0x1189c, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
dec %r15
mov (%rbp), %r9d
nop
nop
and %rbp, %rbp

// Store
mov $0x5b27610000000f7c, %r12
nop
nop
nop
nop
nop
xor %rbp, %rbp
movw $0x5152, (%r12)
dec %rbx

// Faulty Load
lea addresses_WT+0x437c, %r9
nop
nop
nop
nop
dec %rdi
vmovups (%r9), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r10
lea oracles, %rdi
and $0xff, %r10
shlq $12, %r10
mov (%rdi,%r10,1), %r10
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'52': 20345}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
