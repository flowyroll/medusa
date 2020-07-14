.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x7dc8, %r12
nop
nop
nop
nop
xor %r15, %r15
mov $0x6162636465666768, %rbx
movq %rbx, (%r12)
nop
nop
nop
nop
and $38767, %r12
lea addresses_WT_ht+0x17ec8, %rbx
nop
sub $54848, %r14
movb $0x61, (%rbx)
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_UC_ht+0xcdc8, %rdx
clflush (%rdx)
nop
nop
and $6420, %r10
mov (%rdx), %bx
and %rbx, %rbx
lea addresses_A_ht+0xea02, %r14
nop
nop
nop
nop
add %r10, %r10
movb $0x61, (%r14)
nop
nop
sub %r15, %r15
lea addresses_WT_ht+0x119c8, %rsi
lea addresses_UC_ht+0x1d5c8, %rdi
nop
nop
nop
nop
nop
sub %r15, %r15
mov $62, %rcx
rep movsq
nop
nop
nop
cmp $58039, %rcx
lea addresses_normal_ht+0x10588, %rdi
nop
nop
cmp $65399, %r15
movb $0x61, (%rdi)
nop
nop
nop
sub $45736, %r14
lea addresses_normal_ht+0x65c8, %rcx
nop
nop
add $38306, %r14
mov $0x6162636465666768, %r12
movq %r12, %xmm6
vmovups %ymm6, (%rcx)
dec %rdx
lea addresses_D_ht+0x1e280, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
add %r14, %r14
mov (%rsi), %r12d
nop
nop
nop
and $42240, %rbx
lea addresses_normal_ht+0x1e8e8, %r10
clflush (%r10)
nop
nop
xor %r14, %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%r10)
nop
nop
nop
nop
nop
cmp $43397, %r10
lea addresses_A_ht+0x1369c, %r12
nop
nop
add $13724, %rbx
movb $0x61, (%r12)
nop
xor %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_PSE+0x185b8, %r8
nop
nop
nop
nop
sub $43807, %r14
mov (%r8), %di
nop
nop
cmp %rbx, %rbx

// REPMOV
lea addresses_WT+0x1a220, %rsi
lea addresses_UC+0x14700, %rdi
xor $23772, %r11
mov $17, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rcx, %rcx

// Faulty Load
lea addresses_RW+0x15c8, %r9
nop
add $6362, %rbx
mov (%r9), %cx
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_UC', 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_RW', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': True, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'32': 8}
32 32 32 32 32 32 32 32
*/
