.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1e47a, %r8
nop
nop
nop
nop
nop
sub $9391, %rdi
mov $0x6162636465666768, %rax
movq %rax, (%r8)
nop
inc %rbx
lea addresses_WT_ht+0x14cda, %rax
xor %r11, %r11
movb (%rax), %r14b
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x7c7a, %rsi
lea addresses_A_ht+0xf30a, %rdi
nop
nop
nop
cmp %r8, %r8
mov $85, %rcx
rep movsb
nop
nop
nop
nop
nop
mfence
lea addresses_normal_ht+0x3246, %rbx
nop
nop
nop
nop
nop
dec %rdi
mov (%rbx), %r8d
nop
nop
dec %r11
lea addresses_normal_ht+0x1917a, %rbx
nop
nop
lfence
movb (%rbx), %cl
sub $7265, %rbx
lea addresses_normal_ht+0x967a, %r14
nop
nop
nop
nop
nop
add $63721, %rsi
movw $0x6162, (%r14)
add %rcx, %rcx
lea addresses_UC_ht+0x1a27a, %r11
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov (%r11), %esi
nop
nop
cmp $5113, %r8
lea addresses_WC_ht+0x6fe0, %r11
clflush (%r11)
nop
nop
nop
sub %rsi, %rsi
mov (%r11), %r8d
nop
xor %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r9
push %rax
push %rbp
push %rdx
push %rsi

// Faulty Load
lea addresses_WT+0x1787a, %rax
nop
nop
dec %r12
mov (%rax), %rsi
lea oracles, %rbp
and $0xff, %rsi
shlq $12, %rsi
mov (%rbp,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 4, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'44': 8, 'f0': 3, '47': 243, '00': 99, '53': 475, '49': 7470, '48': 18, '80': 1, '30': 2581, 'd0': 10, 'ff': 10920, '3c': 1}
ff ff ff 30 49 ff ff ff 30 49 49 ff 49 ff ff ff ff ff 30 ff ff 30 ff 30 49 49 49 49 ff 49 49 ff 49 49 49 ff ff ff ff 49 ff 49 49 ff 49 ff 49 ff ff 49 49 ff 49 49 ff ff 49 49 49 49 49 49 ff 49 49 49 ff 49 00 53 ff ff ff ff ff 53 ff 30 ff ff ff ff 30 ff 30 ff ff 47 ff 30 49 ff 49 ff f0 ff 49 ff 49 49 49 ff 49 49 49 ff ff ff 49 49 49 ff 49 ff 49 49 ff ff ff ff ff ff ff 30 ff ff ff ff 30 ff 30 ff ff ff ff ff 49 ff 49 49 ff 49 49 ff 30 ff 49 ff ff 49 49 49 ff 49 49 49 49 ff 49 ff 49 49 49 49 ff 49 49 ff ff ff 49 ff ff ff ff 49 ff 30 49 ff ff 49 49 49 49 ff ff ff 30 ff 30 ff 49 ff ff 30 ff 30 53 ff ff 30 ff ff 30 49 ff 30 49 ff ff 30 ff 30 49 00 ff 49 49 ff 49 ff ff ff ff ff ff ff 30 ff 30 ff ff 30 49 49 ff 30 ff ff 30 49 ff 49 49 49 ff 53 49 ff 49 ff 49 49 ff 49 ff 49 49 ff 49 ff ff 49 49 49 ff ff ff ff ff 30 ff 30 ff 30 ff ff 53 ff 30 ff ff ff 30 49 ff 49 ff ff 49 49 ff 30 ff ff 30 49 49 ff 49 49 ff 49 49 ff ff 53 ff 49 49 49 00 ff ff ff ff ff 30 ff 30 ff ff 30 ff 49 ff 30 ff 49 49 ff ff ff 30 ff ff 30 49 49 49 ff 49 49 49 ff ff 49 49 49 ff 49 ff 49 49 ff 49 ff 49 ff ff ff 49 ff ff ff ff 30 ff 30 ff 49 ff 30 49 ff ff ff ff ff 49 49 49 49 49 ff ff 49 ff ff 30 ff 30 ff 30 49 ff 49 ff ff 49 ff ff 30 ff 49 ff 30 49 ff 30 49 49 53 49 ff 49 49 49 49 ff ff ff ff ff 30 49 49 ff ff ff 49 ff 30 ff 30 ff ff ff 30 ff 30 49 ff ff 30 47 ff 30 ff 30 49 49 ff ff ff ff ff 30 ff ff 53 ff ff 30 ff ff 30 53 ff 49 ff 49 49 49 ff ff 30 ff 30 ff 49 ff 49 ff ff d0 49 ff 49 49 49 ff 49 ff ff 49 49 ff 49 00 ff ff 49 ff 49 49 49 ff 49 49 ff 49 ff 49 ff ff 49 ff 49 49 ff 49 ff 49 ff 49 ff 49 49 ff ff ff 30 ff 49 49 49 49 ff ff 49 ff ff 49 ff ff 30 ff 30 ff 30 ff 30 49 ff 49 49 49 ff ff 49 49 ff ff ff ff ff 30 49 47 ff ff ff 30 49 49 ff 49 ff ff 49 49 ff ff ff ff 30 ff 30 49 ff ff 30 ff 49 49 ff ff 30 ff 30 ff ff 30 49 ff 30 ff 30 ff 30 ff 30 ff 49 49 49 ff 49 47 ff 49 49 ff ff ff 49 49 49 ff ff ff ff ff ff ff 53 49 49 49 49 ff ff 30 ff 49 49 ff ff ff ff 30 ff ff 30 49 ff 30 49 ff 49 ff ff 30 ff ff ff 30 ff ff 30 ff 49 49 49 ff 49 ff ff 30 ff 30 ff 30 ff 30 49 49 49 ff 49 ff ff ff 30 ff 30 ff 30 ff 49 ff 30 ff 30 ff ff 49 ff 30 49 ff 49 ff ff ff 30 49 ff 49 49 ff 49 ff ff 30 ff 30 ff 49 ff 49 ff ff 30 ff 30 49 49 ff ff 30 47 ff 49 ff 49 49 49 ff ff 49 ff ff ff 30 49 ff ff 30 ff 30 ff ff ff ff ff 49 49 ff 49 49 ff 49 ff 30 53 ff ff 49 49 49 ff ff ff 49 49 49 49 ff 49 ff 49 ff 49 ff 30 49 ff ff 30 ff 49 49 49 ff 53 ff 49 ff 53 ff ff ff 49 ff 49 ff ff 30 ff 30 49 49 ff ff 49 ff ff 30 ff 30 ff 30 ff 30 49 49 49 ff 49 49 ff 49 49 ff ff ff ff 49 ff ff 30 ff 30 ff 49 ff ff ff ff 30 49 ff 49 ff ff 30 ff 49 49 ff ff 30 49 49 ff ff 30 49 ff ff 30 ff ff ff ff 49 ff 30 49 ff 30 ff 30 ff 30 ff ff 30 ff 30 ff 30 49 ff ff 49 49 ff ff ff 49 ff 30 ff ff 30 47 49 ff ff ff 30 ff 30 ff 30 49 ff 30 ff 30 49 ff 30 49 ff ff 49 ff 49 49 49 ff 49 49 ff ff 49 ff ff 49 ff 49 49 ff ff 49 49 49 ff ff 49 ff 49 49 ff ff 53 ff ff 49 ff ff 30 ff 49 49 49 49 ff 49 ff 49 49 ff 49 ff ff 49 49 ff 49 49 49 49 ff ff
*/
