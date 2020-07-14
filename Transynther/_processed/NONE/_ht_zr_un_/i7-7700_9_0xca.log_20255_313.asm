.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1b7ba, %rsi
lea addresses_WT_ht+0x46d6, %rdi
clflush (%rdi)
nop
sub %rdx, %rdx
mov $102, %rcx
rep movsl
nop
nop
xor $48219, %rdx
lea addresses_UC_ht+0x9836, %rsi
lea addresses_UC_ht+0x4b08, %rdi
nop
add %rbp, %rbp
mov $33, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x1319f, %rsi
lea addresses_UC_ht+0xd176, %rdi
clflush (%rdi)
nop
sub %rbx, %rbx
mov $95, %rcx
rep movsq
nop
nop
nop
nop
cmp $9525, %rdi
lea addresses_A_ht+0x1c92e, %rsi
lea addresses_WC_ht+0x1456, %rdi
nop
nop
nop
nop
nop
add $35242, %rbx
mov $53, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $59153, %rsi
lea addresses_UC_ht+0xd136, %rbx
nop
nop
nop
nop
and %rdi, %rdi
movw $0x6162, (%rbx)
xor %rbx, %rbx
lea addresses_WC_ht+0x40f6, %rcx
nop
nop
nop
nop
add %rsi, %rsi
movb $0x61, (%rcx)
nop
nop
nop
inc %rdx
lea addresses_D_ht+0x2c86, %rsi
lea addresses_UC_ht+0x1b336, %rdi
cmp $112, %r15
mov $29, %rcx
rep movsl
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x1bce6, %rsi
lea addresses_WT_ht+0x5336, %rdi
nop
nop
nop
nop
xor $15340, %r10
mov $112, %rcx
rep movsq
nop
nop
nop
nop
sub %r10, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %rax
push %rbp
push %rsi

// Store
lea addresses_WC+0xad8e, %r12
add $46856, %r11
mov $0x5152535455565758, %rsi
movq %rsi, (%r12)
nop
nop
nop
nop
nop
and %r10, %r10

// Store
lea addresses_D+0xa636, %r11
nop
nop
nop
nop
dec %r10
movb $0x51, (%r11)
nop
add %r10, %r10

// Load
lea addresses_WT+0xe156, %rbp
nop
nop
nop
nop
nop
cmp %r14, %r14
mov (%rbp), %esi
cmp %rsi, %rsi

// Store
lea addresses_UC+0xab36, %r14
nop
nop
add $62207, %r10
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
movups %xmm6, (%r14)
nop
nop
nop
dec %rbp

// Faulty Load
lea addresses_A+0x1bb36, %rbp
nop
nop
nop
nop
nop
sub $47522, %r14
vmovups (%rbp), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r11
lea oracles, %rax
and $0xff, %r11
shlq $12, %r11
mov (%rax,%r11,1), %r11
pop %rsi
pop %rbp
pop %rax
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': True, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': True, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}}
{'46': 6504, '06': 19, '45': 245, '01': 1, '40': 2, '00': 13475, '49': 8, '08': 1}
46 46 00 00 46 46 45 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 46 46 00 00 00 00 46 46 46 00 46 45 00 46 00 00 45 46 00 00 00 46 00 00 00 00 00 46 00 46 00 00 46 00 00 46 00 46 00 00 00 46 00 46 00 00 00 46 46 00 46 00 00 46 46 46 00 46 46 00 46 00 46 46 46 46 00 00 46 46 00 00 46 00 00 46 46 00 46 00 00 00 00 00 00 46 00 46 46 00 00 00 46 46 46 46 00 46 00 00 46 00 46 00 00 00 46 00 00 46 00 46 00 00 00 00 46 46 00 46 00 46 00 00 00 00 46 00 00 46 00 00 00 00 46 00 00 00 00 00 46 00 00 46 46 00 00 00 46 00 46 46 00 00 00 46 46 00 46 46 46 00 46 46 00 00 00 46 00 00 00 00 00 00 00 46 46 00 00 00 46 46 00 46 00 00 00 00 00 00 00 00 00 46 00 46 46 00 00 00 00 00 00 00 46 00 00 00 46 46 46 00 46 00 00 00 00 46 46 00 46 00 00 00 40 00 00 00 00 46 00 00 46 00 00 00 00 00 00 46 46 46 00 00 46 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 46 00 46 00 00 00 46 00 00 00 46 46 00 00 46 00 00 46 00 00 46 46 00 00 00 46 46 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 40 00 46 46 00 00 46 00 46 00 46 00 46 00 00 00 00 46 00 00 00 00 00 46 00 00 46 00 00 00 46 00 00 00 46 00 00 00 46 00 46 00 46 46 00 46 46 00 00 46 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 46 46 00 00 46 46 46 00 46 46 46 00 00 00 00 45 00 00 00 00 00 00 00 00 00 46 46 46 46 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 46 00 46 00 45 00 00 00 00 00 00 46 00 46 00 46 00 00 00 46 00 00 46 00 00 00 46 46 46 00 46 00 46 46 46 00 00 00 00 46 46 00 00 00 00 00 46 46 46 46 00 00 46 00 00 00 46 00 00 00 00 46 00 00 00 00 00 46 00 46 00 46 46 00 46 00 46 00 00 45 46 00 00 46 00 00 00 00 00 00 46 00 00 00 00 00 00 00 46 00 46 00 00 00 46 00 00 46 00 46 00 00 00 46 00 00 46 00 00 00 00 46 46 00 00 00 00 00 46 00 46 00 00 46 46 00 46 46 00 00 00 00 00 00 46 00 00 00 46 00 00 45 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 46 46 00 46 46 00 46 00 00 46 00 46 00 00 00 46 00 00 00 00 00 00 46 00 00 00 46 46 00 46 00 00 00 00 46 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 46 00 00 46 46 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 46 00 00 46 00 46 00 00 00 00 46 46 00 00 46 00 46 00 00 46 00 00 00 46 00 46 46 00 00 46 00 46 00 00 00 00 00 00 00 00 46 00 00 00 46 46 00 46 45 00 46 00 00 00 46 00 46 46 46 46 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 46 46 00 46 46 00 46 00 46 00 00 00 00 45 00 46 00 46 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 45 46 00 00 00 46 46 46 46 00 00 00 00 00 00 46 00 00 00 00 46 46 00 00 00 46 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 46 00 00 00 46 46 46 46 00 00 46 00 46 00 46 00 00 46 46 46 46 46 00 46 00 46 46 00 00 00 00 46 00 46 46 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 46 46 00 46 00 00 46 00 00 00 46 00 00 00 00 46 00 46 00 00 00 46 46 00 00 00 00 46 00 00 00 46 00 00 46 46 00 00 00 46 00 46 00 00 46 00 00 00 46 45 00 46 46 46 46 45 46 46 00 00 00
*/
