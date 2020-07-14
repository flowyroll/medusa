.global s_prepare_buffers
s_prepare_buffers:
push %r9
push %rbx
push %rdi
push %rsi
lea addresses_WC_ht+0x1e2c1, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
cmp $22435, %r9
mov (%rbx), %si
nop
nop
nop
nop
nop
sub $128, %rdi
pop %rsi
pop %rdi
pop %rbx
pop %r9
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx

// Store
mov $0x55c0ef0000000f81, %rax
nop
xor %rdi, %rdi
mov $0x5152535455565758, %r8
movq %r8, %xmm2
movups %xmm2, (%rax)
nop
nop
cmp %r12, %r12

// Store
lea addresses_WT+0x1c971, %rax
nop
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %r8
movq %r8, %xmm6
vmovups %ymm6, (%rax)
nop
nop
nop
inc %rax

// Store
mov $0x3ffe940000000381, %rax
nop
nop
add $44319, %r15
mov $0x5152535455565758, %r8
movq %r8, %xmm4
vmovaps %ymm4, (%rax)
nop
nop
nop
nop
nop
inc %rdx

// Faulty Load
lea addresses_A+0x8f81, %r8
clflush (%r8)
nop
sub $50659, %r12
vmovups (%r8), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdi
lea oracles, %rdx
and $0xff, %rdi
shlq $12, %rdi
mov (%rdx,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'00': 1}
00
*/
