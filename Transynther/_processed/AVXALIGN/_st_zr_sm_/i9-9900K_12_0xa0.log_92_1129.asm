.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xf49a, %rdi
nop
nop
add %r9, %r9
movl $0x61626364, (%rdi)
nop
nop
add $28291, %rax
lea addresses_WT_ht+0x1bc9a, %r8
inc %rcx
movw $0x6162, (%r8)
nop
nop
xor $38426, %rax
lea addresses_normal_ht+0xef84, %r9
nop
nop
nop
nop
dec %r14
mov $0x6162636465666768, %rax
movq %rax, (%r9)
nop
nop
cmp %rax, %rax
lea addresses_normal_ht+0x1861a, %rdx
nop
nop
nop
nop
and %rax, %rax
movl $0x61626364, (%rdx)
nop
nop
nop
nop
add $12416, %rdx
lea addresses_WC_ht+0x1e69a, %rsi
lea addresses_normal_ht+0x19f1a, %rdi
nop
nop
nop
nop
nop
and %r9, %r9
mov $65, %rcx
rep movsw
nop
nop
nop
nop
add $37863, %r9
lea addresses_WT_ht+0x715a, %r9
nop
and %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%r9)
cmp $57178, %rdi
lea addresses_D_ht+0x17e9a, %r8
nop
nop
add %rdi, %rdi
mov (%r8), %r9w
nop
nop
nop
and %rax, %rax
lea addresses_A_ht+0x4a58, %rax
and $53515, %r9
vmovups (%rax), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
and $3853, %rsi
lea addresses_D_ht+0xebfa, %rcx
cmp %r14, %r14
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
and $0xffffffffffffffc0, %rcx
vmovaps %ymm1, (%rcx)
inc %r9
lea addresses_D_ht+0x1a49a, %r8
nop
nop
nop
nop
nop
xor $5996, %rdx
movb $0x61, (%r8)
nop
nop
nop
nop
nop
and $52741, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_D+0x1bc9a, %rbp
nop
xor $23559, %r8
vmovups (%rbp), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdx
nop
nop
nop
inc %r15

// REPMOV
mov $0x39a, %rsi
mov $0x297546000000049a, %rdi
nop
nop
nop
nop
nop
xor $52880, %rbp
mov $44, %rcx
rep movsq
nop
sub $47261, %rcx

// Store
mov $0x297546000000049a, %r8
nop
cmp $42947, %rdi
movw $0x5152, (%r8)
sub %rcx, %rcx

// Store
lea addresses_UC+0x3fda, %rdi
nop
sub $18945, %r8
movb $0x51, (%rdi)
xor %rdi, %rdi

// Load
lea addresses_A+0x1311a, %rbp
nop
nop
nop
nop
dec %rdi
mov (%rbp), %cx
nop
nop
cmp $40630, %rsi

// Faulty Load
mov $0x297546000000049a, %r8
clflush (%r8)
cmp %rdi, %rdi
movb (%r8), %dl
lea oracles, %r15
and $0xff, %rdx
shlq $12, %rdx
mov (%r15,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_D', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_P'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}}
{'52': 12, '00': 80}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 52 00 00 52 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 52 00 52 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 52 00 00 00 52 00 00 52 00 00 00 00 00 00 00
*/
