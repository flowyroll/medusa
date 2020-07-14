.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x407b, %r10
nop
add $52897, %rbp
mov (%r10), %rdi
nop
nop
sub $58657, %r10
lea addresses_UC_ht+0xa53, %rax
clflush (%rax)
nop
nop
add %r10, %r10
and $0xffffffffffffffc0, %rax
movaps (%rax), %xmm5
vpextrq $1, %xmm5, %rsi
cmp $8040, %rsi
lea addresses_WT_ht+0x131db, %rsi
lea addresses_A_ht+0x187db, %rdi
nop
nop
inc %r11
mov $97, %rcx
rep movsq
nop
nop
sub $9, %rbp
lea addresses_WT_ht+0xf9db, %rsi
lea addresses_normal_ht+0x141db, %rdi
clflush (%rsi)
nop
cmp $19845, %rbx
mov $112, %rcx
rep movsq
nop
add $41631, %rbp
lea addresses_A_ht+0x98a7, %rcx
clflush (%rcx)
nop
nop
nop
xor $41729, %r10
mov $0x6162636465666768, %rax
movq %rax, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
nop
cmp $48722, %rcx
lea addresses_D_ht+0x1ab8b, %r10
nop
nop
nop
xor %rbx, %rbx
mov (%r10), %ebp
nop
nop
nop
xor $53871, %rbx
lea addresses_WC_ht+0x1797, %rcx
nop
nop
nop
nop
and $26207, %rax
movw $0x6162, (%rcx)
nop
nop
and $22686, %r11
lea addresses_normal_ht+0x85db, %rsi
lea addresses_UC_ht+0xc25b, %rdi
dec %rbp
mov $15, %rcx
rep movsl
add %rbp, %rbp
lea addresses_WC_ht+0xdecb, %rbx
nop
xor %r11, %r11
movb $0x61, (%rbx)
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x29db, %rsi
lea addresses_WT_ht+0x18183, %rdi
sub $63261, %r11
mov $35, %rcx
rep movsl
dec %rbx
lea addresses_UC_ht+0x58db, %rsi
lea addresses_A_ht+0x815b, %rdi
cmp %r11, %r11
mov $72, %rcx
rep movsl
nop
nop
nop
add %rbp, %rbp
lea addresses_WC_ht+0x149ab, %rcx
nop
nop
dec %rbx
movb $0x61, (%rcx)
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x16485, %rsi
nop
nop
cmp $5766, %rbp
movw $0x6162, (%rsi)
nop
sub $860, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r9
push %rcx
push %rdi
push %rsi

// Faulty Load
mov $0x1db, %rsi
nop
dec %r9
mov (%rsi), %rdi
lea oracles, %r12
and $0xff, %rdi
shlq $12, %rdi
mov (%r12,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': True, 'congruent': 4, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}}
{'00': 1}
00
*/
