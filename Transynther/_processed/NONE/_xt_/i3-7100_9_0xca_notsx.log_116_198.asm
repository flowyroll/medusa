.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x6b64, %r10
nop
nop
xor $42219, %rax
mov $0x6162636465666768, %r12
movq %r12, %xmm4
vmovups %ymm4, (%r10)
nop
nop
nop
add %rbp, %rbp
lea addresses_UC_ht+0xc654, %r13
nop
nop
nop
dec %rax
movb $0x61, (%r13)
nop
nop
nop
nop
nop
xor $49991, %r13
lea addresses_WT_ht+0x17f94, %rsi
lea addresses_A_ht+0x1669b, %rdi
nop
nop
nop
nop
xor $65229, %rbp
mov $71, %rcx
rep movsq
nop
xor %rbp, %rbp
lea addresses_D_ht+0x13f94, %rsi
lea addresses_WT_ht+0x17f94, %rdi
nop
nop
nop
nop
nop
sub $13412, %rax
mov $24, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %r10, %r10
lea addresses_normal_ht+0x12b94, %rsi
lea addresses_A_ht+0x1e214, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor %rdx, %rdx
mov $8, %rcx
rep movsw
nop
nop
sub $18515, %r10
lea addresses_WT_ht+0x1d6e8, %r13
nop
nop
add $1139, %r12
movb (%r13), %dl
nop
nop
nop
nop
nop
and $50270, %rdi
lea addresses_UC_ht+0xe694, %rsi
lea addresses_D_ht+0x155b4, %rdi
nop
nop
nop
sub %r10, %r10
mov $74, %rcx
rep movsb
nop
nop
nop
dec %r10
pop %rsi
pop %rdx
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
push %r10
push %r12
push %r13
push %r15
push %r9
push %rcx
push %rdi

// Store
lea addresses_UC+0x6bb6, %rdi
nop
nop
cmp $42431, %r15
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movups %xmm7, (%rdi)
nop
nop
nop
nop
inc %r15

// Store
lea addresses_D+0x5434, %r13
nop
nop
and $20193, %r10
movw $0x5152, (%r13)
nop
nop
nop
sub $18686, %rcx

// Load
lea addresses_WC+0x17d94, %r13
nop
nop
nop
nop
nop
sub %rdi, %rdi
movb (%r13), %cl
nop
add %r15, %r15

// Load
lea addresses_UC+0x19694, %r15
nop
nop
nop
nop
nop
xor %r13, %r13
movaps (%r15), %xmm5
vpextrq $0, %xmm5, %r9
nop
nop
nop
nop
nop
xor $45189, %rdi

// Faulty Load
lea addresses_PSE+0x3f94, %rdi
nop
nop
inc %r13
movb (%rdi), %cl
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_WC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 4, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'33': 116}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
