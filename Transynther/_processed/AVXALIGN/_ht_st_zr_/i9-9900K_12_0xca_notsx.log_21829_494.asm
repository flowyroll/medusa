.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xd2d7, %r14
nop
nop
nop
nop
xor $33388, %r13
mov $0x6162636465666768, %r12
movq %r12, %xmm1
vmovups %ymm1, (%r14)
nop
nop
nop
and %r15, %r15
lea addresses_WC_ht+0xccd7, %rsi
lea addresses_WT_ht+0x192e7, %rdi
add %rax, %rax
mov $44, %rcx
rep movsw
nop
add $8530, %rsi
lea addresses_UC_ht+0x1b421, %r15
nop
nop
nop
nop
cmp %rcx, %rcx
movl $0x61626364, (%r15)
nop
nop
nop
nop
nop
dec %rax
lea addresses_D_ht+0x9d7, %rsi
lea addresses_D_ht+0x18547, %rdi
clflush (%rdi)
xor $37595, %r12
mov $118, %rcx
rep movsb
dec %r13
lea addresses_WT_ht+0x1bad7, %rdi
clflush (%rdi)
nop
nop
nop
dec %rax
mov $0x6162636465666768, %r13
movq %r13, (%rdi)
nop
nop
sub $40124, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r9
push %rax
push %rbp
push %rbx
push %rdi
push %rsi

// Store
lea addresses_normal+0x5dd7, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %r10, %r10
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%rdi)
nop
nop
nop
xor $32309, %rsi

// Load
lea addresses_A+0x137d7, %rsi
nop
nop
nop
nop
xor %rax, %rax
vmovups (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbp
nop
cmp $16743, %rdi

// Load
mov $0xa57, %rbx
add $23307, %rax
mov (%rbx), %ebp
nop
nop
nop
nop
nop
dec %rdi

// Store
lea addresses_US+0x43d7, %rbp
nop
add $45961, %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm4
movups %xmm4, (%rbp)
nop
nop
nop
nop
add %r10, %r10

// Store
lea addresses_UC+0x166d7, %rbx
nop
cmp %rdi, %rdi
movb $0x51, (%rbx)
dec %rbx

// Store
lea addresses_WT+0x13c33, %rsi
xor $12136, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%rsi)
nop
sub $36591, %rbp

// Faulty Load
lea addresses_RW+0x35d7, %r10
nop
nop
cmp $13838, %rbp
movaps (%r10), %xmm1
vpextrq $1, %xmm1, %rbx
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'46': 162, '00': 1632, '35': 20035}
46 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 00 35 35 35 35 35 00 35 35 35 35 35 35 35 00 35 35 35 35 35 35 35 35 35 35 35 35 35 00 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 00 35 00 35 35 35 35 35 35 00 00 35 35 35 35 35 35 35 35 35 35 35 00 35 35 35 35 35 35 35 00 35 35 35 35 00 35 00 35 35 35 35 00 35 35 35 35 35 35 35 00 35 35 35 46 35 35 35 35 35 35 35 00 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 00 00 00 35 35 35 35 00 35 35 35 35 35 00 35 35 35 35 35 35 35 00 35 35 35 35 35 00 35 35 35 35 35 35 35 35 35 00 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 00 35 35 35 35 35 35 35 35 35 35 35 35 35 35 00 35 35 35 35 35 35 35 35 35 35 35 35 35 46 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 00 00 35 35 35 35 35 35 35 35 35 35 35 35 00 35 35 35 35 35 35 35 35 35 35 35 35 35 35 00 35 35 35 35 35 35 35 35 00 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 00 35 35 35 35 35 35 35 00 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 00 35 35 35 35 35 35 35 35 00 35 00 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 00 35 35 35 35 35 35 35 35 35 35 35 35 35 00 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 00 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 46 35 00 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 00 35 35 35 35 35 35 00 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 00 35 35 35 35 35 35 35 35 00 00 35 35 35 35 35 35 35 35 35 35 35 35 00 35 35 35 35 35 35 35 35 35 35 35 35 35 35 00 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 00 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 00 35 35 35 35 35 35 00 35 35 35 35 35 35 35 35 35 35 35 35 00 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 00 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 00 35 35 35 35 35 00 35 35 35 35 35 35 35 35 35 35 35 35 00 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 00 35 35 35 35 35 35 35 35 35 35 35 35 35 00 35 35 35 35 35 35 00 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 00 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 00 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 00 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 00 35 35 35 35 35 35 35 35 35 35 35 35 35 00 35 35
*/
