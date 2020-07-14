.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xcfc, %r8
nop
nop
nop
nop
and %r12, %r12
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%r8)
nop
nop
nop
nop
xor $36583, %r8
lea addresses_WC_ht+0x803c, %r15
cmp $551, %r13
mov $0x6162636465666768, %r14
movq %r14, (%r15)
nop
nop
nop
sub %r13, %r13
lea addresses_WC_ht+0x167ec, %rsi
lea addresses_normal_ht+0x56fc, %rdi
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov $4, %rcx
rep movsb
nop
nop
nop
add $8105, %rsi
lea addresses_D_ht+0x1ecfc, %r14
clflush (%r14)
nop
nop
dec %rbp
movw $0x6162, (%r14)
nop
add %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_D+0x716c, %rbx
clflush (%rbx)
nop
nop
nop
nop
and $55452, %r8
mov $0x5152535455565758, %rdx
movq %rdx, (%rbx)
nop
nop
nop
nop
nop
inc %rdx

// Store
mov $0x5769d90000000722, %rcx
xor $37569, %rbp
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
add $64705, %r10

// Store
lea addresses_A+0x16bcc, %r10
cmp $59886, %rdi
movb $0x51, (%r10)
nop
nop
nop
dec %rdx

// Store
lea addresses_normal+0x18964, %r8
clflush (%r8)
nop
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%r8)
nop
nop
nop
dec %r8

// Faulty Load
lea addresses_US+0x70fc, %r10
nop
nop
cmp $38045, %rdx
movntdqa (%r10), %xmm4
vpextrq $0, %xmm4, %rdi
lea oracles, %r10
and $0xff, %rdi
shlq $12, %rdi
mov (%r10,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_US', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'00': 133}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
