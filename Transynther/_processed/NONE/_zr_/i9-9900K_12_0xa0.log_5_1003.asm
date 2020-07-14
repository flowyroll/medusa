.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x13be3, %r15
nop
nop
nop
nop
nop
cmp $28030, %r13
mov (%r15), %ebx
nop
nop
nop
and %rbp, %rbp
lea addresses_UC_ht+0x9adb, %rax
nop
nop
nop
nop
sub %rbx, %rbx
mov $0x6162636465666768, %rbp
movq %rbp, (%rax)
nop
nop
sub %r15, %r15
lea addresses_normal_ht+0x1de3, %r14
add $64403, %r13
vmovups (%r14), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r15
nop
dec %rbx
lea addresses_normal_ht+0x15523, %rsi
lea addresses_normal_ht+0x1d063, %rdi
nop
nop
nop
nop
cmp %r13, %r13
mov $58, %rcx
rep movsl
nop
xor $55087, %rax
lea addresses_D_ht+0xfe63, %rsi
lea addresses_UC_ht+0x19a63, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add $44515, %rax
mov $94, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $63039, %rcx
lea addresses_WT_ht+0x15f43, %rbp
nop
nop
nop
sub %rbx, %rbx
movb (%rbp), %al
nop
nop
add %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0xce63, %rsi
lea addresses_normal+0x19e63, %rdi
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov $83, %rcx
rep movsl
nop
dec %rdi

// Store
lea addresses_WT+0xa20b, %r10
nop
nop
nop
xor $64380, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, (%r10)
nop
nop
xor %r8, %r8

// Store
lea addresses_normal+0x5663, %rbp
nop
nop
nop
nop
xor $19572, %r8
mov $0x5152535455565758, %r10
movq %r10, (%rbp)
nop
nop
nop
cmp $30485, %rbp

// Store
lea addresses_normal+0xa773, %r8
nop
nop
add $31102, %r12
mov $0x5152535455565758, %rsi
movq %rsi, (%r8)

// Exception!!!
nop
nop
mov (0), %rdi
sub $58556, %r8

// Store
mov $0x1cffff0000000c63, %rdi
xor $26843, %rsi
movw $0x5152, (%rdi)
sub %rdi, %rdi

// Store
lea addresses_UC+0x11163, %r8
nop
nop
nop
sub %rbp, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r8)
nop
nop
cmp $63918, %r10

// Store
lea addresses_normal+0xc0a3, %rdi
xor $37353, %rbp
mov $0x5152535455565758, %r10
movq %r10, (%rdi)
nop
nop
and %r10, %r10

// Faulty Load
lea addresses_WT+0x5e63, %r12
and %rdi, %rdi
vmovups (%r12), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r8
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_normal', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 9, 'type': 'addresses_NC', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_UC', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'00': 5}
00 00 00 00 00
*/
