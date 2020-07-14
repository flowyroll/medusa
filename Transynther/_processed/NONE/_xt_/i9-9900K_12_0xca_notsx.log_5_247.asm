.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x15ff4, %rsi
lea addresses_normal_ht+0x157f4, %rdi
nop
add %rdx, %rdx
mov $23, %rcx
rep movsl
nop
nop
nop
nop
xor $52769, %rbx
lea addresses_WC_ht+0x155d9, %r10
clflush (%r10)
sub %rax, %rax
mov $0x6162636465666768, %rsi
movq %rsi, (%r10)
nop
nop
sub %rax, %rax
lea addresses_normal_ht+0xaa74, %rsi
lea addresses_A_ht+0xa6b4, %rdi
nop
and $52207, %r15
mov $106, %rcx
rep movsw
xor $31467, %r10
lea addresses_WT_ht+0x1d354, %rbx
nop
nop
xor $47567, %rax
mov $0x6162636465666768, %r10
movq %r10, %xmm5
vmovups %ymm5, (%rbx)
nop
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x17e74, %rdx
clflush (%rdx)
nop
nop
cmp %rdi, %rdi
mov (%rdx), %rcx
add $42882, %rbx
lea addresses_D_ht+0x15c74, %r15
nop
nop
nop
xor %rcx, %rcx
mov (%r15), %edx
nop
nop
nop
nop
nop
and $32252, %rdx
lea addresses_WC_ht+0x8274, %rsi
lea addresses_UC_ht+0xdbfd, %rdi
nop
sub %rdx, %rdx
mov $115, %rcx
rep movsb
nop
nop
nop
nop
nop
mfence
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdi

// Load
lea addresses_normal+0x1e134, %r14
nop
nop
add $13900, %r12
movb (%r14), %r8b
nop
nop
nop
nop
nop
inc %r14

// Store
mov $0x79afd700000005f4, %r14
clflush (%r14)
nop
nop
nop
nop
nop
and $19539, %rax
mov $0x5152535455565758, %r8
movq %r8, %xmm4
vmovups %ymm4, (%r14)
nop
nop
xor $62275, %r14

// Store
lea addresses_A+0xafff, %r12
nop
add $64418, %r13
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
dec %r14

// Faulty Load
lea addresses_D+0x11074, %rcx
inc %r8
movups (%rcx), %xmm1
vpextrq $0, %xmm1, %rax
lea oracles, %r13
and $0xff, %rax
shlq $12, %rax
mov (%r13,%rax,1), %rax
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': True, 'AVXalign': True, 'size': 32, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'36': 5}
36 36 36 36 36
*/
