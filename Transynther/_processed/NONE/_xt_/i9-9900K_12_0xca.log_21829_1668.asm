.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1124c, %rsi
lea addresses_D_ht+0x5dda, %rdi
add $50017, %rbx
mov $17, %rcx
rep movsw
nop
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0xc4a, %rsi
lea addresses_D_ht+0xa4da, %rdi
nop
nop
nop
nop
nop
and $45773, %r14
mov $111, %rcx
rep movsb
nop
nop
nop
lfence
lea addresses_UC_ht+0x9afa, %rsi
lea addresses_WT_ht+0x66bc, %rdi
and %rdx, %rdx
mov $107, %rcx
rep movsq
nop
cmp %r13, %r13
lea addresses_WT_ht+0x112da, %rsi
lea addresses_normal_ht+0x20da, %rdi
nop
nop
nop
nop
inc %r8
mov $39, %rcx
rep movsq
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x17eda, %rbx
nop
nop
nop
nop
cmp %r8, %r8
mov (%rbx), %r14d
nop
nop
nop
nop
nop
add $30173, %rbx
lea addresses_A_ht+0xa3f2, %r13
nop
nop
nop
dec %rsi
movb $0x61, (%r13)
sub $20747, %rsi
lea addresses_normal_ht+0x1e1f0, %rbx
nop
nop
and %rdx, %rdx
mov (%rbx), %cx
sub %rsi, %rsi
lea addresses_normal_ht+0x155da, %r8
nop
nop
nop
xor %rbx, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
and $0xffffffffffffffc0, %r8
vmovaps %ymm3, (%r8)
nop
nop
nop
nop
cmp $42822, %rdi
lea addresses_UC_ht+0xe138, %r8
nop
nop
nop
nop
nop
add %r13, %r13
movups (%r8), %xmm1
vpextrq $1, %xmm1, %r14
nop
nop
inc %r14
lea addresses_UC_ht+0x19cda, %rsi
nop
nop
nop
mfence
mov $0x6162636465666768, %r14
movq %r14, %xmm6
and $0xffffffffffffffc0, %rsi
movaps %xmm6, (%rsi)
nop
nop
nop
nop
nop
mfence
lea addresses_normal_ht+0x8e33, %rsi
lea addresses_UC_ht+0x1581a, %rdi
nop
nop
nop
cmp %rdx, %rdx
mov $39, %rcx
rep movsb
nop
nop
nop
nop
nop
add $44007, %rcx
lea addresses_WC_ht+0x95af, %rsi
lea addresses_A_ht+0x246, %rdi
nop
nop
nop
dec %r14
mov $37, %rcx
rep movsb
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x719a, %rsi
nop
nop
nop
xor $8078, %r8
movb (%rsi), %r13b
nop
nop
add $12987, %rdx
lea addresses_WC_ht+0xf9da, %rsi
lea addresses_WT_ht+0x45da, %rdi
nop
nop
nop
nop
dec %r13
mov $75, %rcx
rep movsq
nop
nop
add $37022, %rbx
lea addresses_WC_ht+0xe052, %rsi
lea addresses_WC_ht+0x34da, %rdi
nop
nop
nop
nop
xor %r8, %r8
mov $11, %rcx
rep movsq
nop
nop
nop
cmp $21987, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_US+0x58da, %r14
nop
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
movups %xmm5, (%r14)
cmp %rsi, %rsi

// Store
lea addresses_PSE+0x42a, %rbx
and $59636, %rax
movb $0x51, (%rbx)
nop
nop
nop
nop
nop
xor %rbx, %rbx

// Faulty Load
lea addresses_RW+0xe0da, %rbx
nop
nop
nop
nop
nop
add $65346, %r8
mov (%rbx), %si
lea oracles, %rax
and $0xff, %rsi
shlq $12, %rsi
mov (%rax,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': True, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_RW', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_UC_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_A_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': True, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': True, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': True, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
