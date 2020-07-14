.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xcca, %r10
nop
nop
nop
nop
nop
dec %rbx
mov $0x6162636465666768, %r11
movq %r11, %xmm3
and $0xffffffffffffffc0, %r10
vmovaps %ymm3, (%r10)
nop
nop
nop
nop
cmp $60076, %r15
lea addresses_UC_ht+0xf65a, %rsi
lea addresses_D_ht+0xe5fa, %rdi
cmp %r10, %r10
mov $111, %rcx
rep movsl
nop
nop
nop
nop
inc %r15
lea addresses_A_ht+0x1445a, %rsi
nop
nop
nop
nop
nop
sub %r10, %r10
mov (%rsi), %r15d
nop
nop
inc %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdx

// Store
mov $0x51eb5f000000075a, %rcx
clflush (%rcx)
nop
nop
nop
xor %r12, %r12
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
add $13657, %r8

// Store
lea addresses_US+0x1f15a, %rcx
nop
nop
nop
nop
nop
cmp %r8, %r8
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
movups %xmm5, (%rcx)
add $53349, %r12

// Faulty Load
lea addresses_normal+0x1d35a, %r15
nop
cmp %r14, %r14
movups (%r15), %xmm2
vpextrq $0, %xmm2, %rdx
lea oracles, %r15
and $0xff, %rdx
shlq $12, %rdx
mov (%r15,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'34': 10}
34 34 34 34 34 34 34 34 34 34
*/
