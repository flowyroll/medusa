.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x767a, %r8
nop
nop
nop
mfence
mov (%r8), %esi
nop
nop
nop
nop
add $1968, %rax
lea addresses_WT_ht+0x1dc7a, %rcx
nop
nop
nop
sub $9189, %r14
movw $0x6162, (%rcx)
nop
nop
sub $40418, %r14
lea addresses_WC_ht+0x504e, %rsi
lea addresses_UC_ht+0x19b3e, %rdi
nop
nop
and $64167, %r14
mov $41, %rcx
rep movsw
nop
nop
sub $62989, %rsi
lea addresses_WC_ht+0x1c47a, %r8
nop
inc %rcx
mov $0x6162636465666768, %r14
movq %r14, %xmm6
movups %xmm6, (%r8)
xor %rdi, %rdi
lea addresses_UC_ht+0x1a47a, %rcx
nop
nop
and $2387, %rax
movb $0x61, (%rcx)
nop
nop
nop
and %r15, %r15
lea addresses_D_ht+0x7c8a, %rax
xor $14950, %rdi
movl $0x61626364, (%rax)
nop
nop
nop
add $34919, %rsi
lea addresses_UC_ht+0x6a7a, %r14
nop
nop
xor %rdi, %rdi
mov (%r14), %rsi
nop
nop
nop
and $59412, %r15
lea addresses_WC_ht+0x747a, %rsi
nop
nop
nop
add %rcx, %rcx
vmovups (%rsi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r15
nop
nop
nop
add $45015, %rsi
lea addresses_UC_ht+0xb9fa, %rax
sub $42011, %r14
movw $0x6162, (%rax)
nop
nop
inc %r15
lea addresses_WT_ht+0x1665a, %r12
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %r8
movq %r8, %xmm1
and $0xffffffffffffffc0, %r12
movntdq %xmm1, (%r12)
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x106e2, %rax
clflush (%rax)
nop
nop
nop
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %r15
movq %r15, (%rax)
nop
nop
nop
nop
xor $17357, %r14
lea addresses_A_ht+0x1647a, %rsi
lea addresses_UC_ht+0x120c2, %rdi
clflush (%rdi)
nop
xor %r15, %r15
mov $121, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %r15, %r15
lea addresses_normal_ht+0x1a67a, %rsi
nop
nop
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %r15
movq %r15, (%rsi)
sub $43241, %r12
lea addresses_normal_ht+0x4d36, %rsi
clflush (%rsi)
sub $59494, %r8
movups (%rsi), %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
nop
nop
sub $3895, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r9
push %rax
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_normal+0x14fac, %rdx
sub $2650, %rax
mov $0x5152535455565758, %rdi
movq %rdi, (%rdx)
nop
sub %rdx, %rdx

// Faulty Load
lea addresses_D+0xb47a, %rbx
nop
nop
nop
nop
add %r9, %r9
movups (%rbx), %xmm5
vpextrq $0, %xmm5, %rax
lea oracles, %rbp
and $0xff, %rax
shlq $12, %rax
mov (%rbp,%rax,1), %rax
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r9
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
