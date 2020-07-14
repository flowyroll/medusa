.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x16e6, %r15
add $53715, %rax
movb $0x61, (%r15)
nop
nop
nop
nop
xor $45525, %rdx
lea addresses_WT_ht+0x1a38, %rcx
nop
and %rsi, %rsi
movl $0x61626364, (%rcx)
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x1eb62, %rax
add %r8, %r8
mov (%rax), %r15w
nop
and %r15, %r15
lea addresses_A_ht+0x5cbe, %r10
nop
nop
xor $55663, %rax
mov $0x6162636465666768, %rsi
movq %rsi, (%r10)
xor %r15, %r15
lea addresses_D_ht+0xad06, %r8
nop
nop
nop
nop
nop
dec %rax
movb $0x61, (%r8)
nop
nop
nop
nop
nop
xor $36254, %r8
lea addresses_WT_ht+0x1ca06, %rsi
lea addresses_UC_ht+0x1d9fc, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $6963, %r15
mov $85, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rdx
lea addresses_WC_ht+0x12e1e, %r15
sub %rdi, %rdi
mov (%r15), %cx
nop
nop
nop
cmp $46775, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %rax
push %rbx
push %rcx
push %rdi

// Faulty Load
lea addresses_normal+0x17906, %rax
clflush (%rax)
nop
nop
nop
nop
xor %rcx, %rcx
vmovups (%rax), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r12
lea oracles, %rcx
and $0xff, %r12
shlq $12, %r12
mov (%rcx,%r12,1), %r12
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': True, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'34': 48}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
