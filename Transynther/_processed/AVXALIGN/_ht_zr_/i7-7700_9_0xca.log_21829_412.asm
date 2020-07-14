.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x19eae, %rsi
lea addresses_WC_ht+0x78c4, %rdi
nop
add %r15, %r15
mov $33, %rcx
rep movsw
cmp %r12, %r12
lea addresses_D_ht+0x1b2ce, %r8
nop
nop
nop
lfence
vmovups (%r8), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x18916, %rsi
lea addresses_A_ht+0x15b2e, %rdi
nop
nop
nop
nop
add $14994, %r15
mov $78, %rcx
rep movsw
nop
nop
inc %rsi
lea addresses_A_ht+0x782e, %r8
nop
xor %r12, %r12
movl $0x61626364, (%r8)
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0xc5ae, %rsi
lea addresses_WT_ht+0x117c6, %rdi
nop
and $19753, %r12
mov $61, %rcx
rep movsw
nop
nop
add $27883, %r14
lea addresses_WT_ht+0x1154e, %r15
sub $65344, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%r15)
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x14fae, %rsi
lea addresses_normal_ht+0x15fd6, %rdi
clflush (%rdi)
nop
nop
nop
and %rbx, %rbx
mov $29, %rcx
rep movsb
nop
nop
nop
nop
sub $59569, %rdi
lea addresses_WC_ht+0x1d7de, %rcx
nop
nop
cmp %rdi, %rdi
mov (%rcx), %r15
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x113f6, %rsi
lea addresses_WC_ht+0xf38e, %rdi
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $64, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x16e, %r14
nop
nop
nop
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %r8
movq %r8, (%r14)
nop
nop
sub $51332, %rcx
lea addresses_WC_ht+0x155ae, %r8
nop
add $9321, %r15
mov (%r8), %edi
nop
nop
nop
nop
xor %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %r9
push %rax
push %rbx
push %rdi

// Store
lea addresses_normal+0x11de, %rdi
clflush (%rdi)
nop
nop
nop
xor $4430, %r14
movw $0x5152, (%rdi)
sub %rax, %rax

// Store
mov $0x5ae, %r8
nop
nop
cmp %r9, %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%r8)
sub $1817, %rbx

// Faulty Load
lea addresses_PSE+0x1fdae, %rbx
nop
nop
cmp %r13, %r13
movaps (%rbx), %xmm4
vpextrq $1, %xmm4, %rdi
lea oracles, %rax
and $0xff, %rdi
shlq $12, %rdi
mov (%rax,%rdi,1), %rdi
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'46': 20378, '00': 1, '49': 732, '45': 718}
46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 45 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 45 46 45 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 49 46 46 46 46 46 46 46 46 46 46 46 45 46 45 46 45 46 45 46 45 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 45 46 49 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 49 46 45 46 46 46 46 46 49 46 46 45 46 46 46 49 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 45 46 45 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 49 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 49 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 45 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 45 46 46 45 49 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 49 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 49 46 46 46 46 46 49 46 46 45 46 45 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 49 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 45 46 46 49 46 46 45 46 45 46 46 46
*/
