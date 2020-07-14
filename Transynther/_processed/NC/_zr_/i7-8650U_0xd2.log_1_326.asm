.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x5832, %rax
nop
nop
cmp $38138, %r10
movb (%rax), %r13b
nop
nop
nop
nop
dec %rbp
lea addresses_UC_ht+0x1c09b, %rsi
lea addresses_WC_ht+0x12212, %rdi
clflush (%rdi)
nop
nop
nop
nop
dec %r12
mov $32, %rcx
rep movsb
nop
nop
nop
sub $50276, %rax
lea addresses_D_ht+0x12cb2, %rsi
inc %r10
mov $0x6162636465666768, %r13
movq %r13, (%rsi)
sub %r10, %r10
lea addresses_normal_ht+0x1b802, %rcx
nop
nop
nop
nop
sub $59245, %rsi
movb (%rcx), %r10b
nop
cmp %r12, %r12
lea addresses_WT_ht+0x1e3b2, %rsi
lea addresses_normal_ht+0x160f2, %rdi
nop
add $5320, %rax
mov $45, %rcx
rep movsb
nop
nop
dec %r13
lea addresses_D_ht+0xfe53, %rax
nop
dec %r10
and $0xffffffffffffffc0, %rax
movaps (%rax), %xmm6
vpextrq $0, %xmm6, %r12
sub $14935, %r10
lea addresses_WT_ht+0x993, %rdi
nop
xor $42749, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
nop
nop
nop
nop
dec %rsi
lea addresses_WC_ht+0x1c162, %r12
sub $41968, %rbp
vmovups (%r12), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
nop
nop
nop
lfence
lea addresses_WC_ht+0xc2a, %rdi
nop
dec %r13
mov $0x6162636465666768, %r10
movq %r10, %xmm6
vmovups %ymm6, (%rdi)
nop
nop
cmp $55606, %r10
lea addresses_UC_ht+0xe072, %rdi
clflush (%rdi)
nop
nop
nop
xor %rbp, %rbp
mov $0x6162636465666768, %r12
movq %r12, (%rdi)
nop
nop
nop
sub $10867, %rsi
lea addresses_normal_ht+0x14db2, %rsi
lea addresses_normal_ht+0x1628, %rdi
nop
nop
nop
nop
nop
sub $3049, %rax
mov $111, %rcx
rep movsl
nop
nop
nop
nop
xor %r13, %r13
lea addresses_normal_ht+0x9fb2, %rsi
lea addresses_D_ht+0xa312, %rdi
nop
nop
nop
nop
dec %r13
mov $0, %rcx
rep movsb
nop
nop
nop
nop
inc %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_US+0x177d2, %rsi
lea addresses_PSE+0x2fb4, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
nop
xor $51091, %rax
mov $40, %rcx
rep movsb
nop
nop
nop
nop
inc %rax

// Store
lea addresses_UC+0x90b2, %rax
nop
add $35988, %rbx
movw $0x5152, (%rax)
nop
nop
and %rsi, %rsi

// Faulty Load
mov $0x3f2a400000003b2, %rdi
nop
and %rsi, %rsi
mov (%rdi), %ecx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_US', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'00': 1}
00
*/
