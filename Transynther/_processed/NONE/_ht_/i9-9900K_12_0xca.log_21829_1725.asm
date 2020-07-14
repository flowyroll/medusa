.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1509a, %r15
clflush (%r15)
nop
nop
nop
nop
nop
cmp $34828, %r8
mov (%r15), %rbx
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x174c, %rdi
nop
nop
nop
dec %r8
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
movups %xmm6, (%rdi)
nop
sub $35127, %rbx
lea addresses_UC_ht+0x1e74c, %r11
add $20951, %r12
mov $0x6162636465666768, %r8
movq %r8, (%r11)
nop
and %rbx, %rbx
lea addresses_D_ht+0x10ccc, %rsi
lea addresses_A_ht+0x1674c, %rdi
nop
nop
nop
nop
nop
sub $21401, %r11
mov $63, %rcx
rep movsw
nop
nop
nop
sub $46649, %rsi
lea addresses_A_ht+0xfd4c, %rsi
lea addresses_normal_ht+0x728c, %rdi
nop
nop
nop
inc %rbx
mov $66, %rcx
rep movsq
nop
nop
nop
xor $58077, %rsi
lea addresses_normal_ht+0x1ab4c, %r11
add $35240, %r15
movups (%r11), %xmm7
vpextrq $0, %xmm7, %r12
nop
nop
nop
nop
nop
cmp %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rsi

// Store
lea addresses_WT+0x1efec, %r8
clflush (%r8)
nop
cmp %r15, %r15
movb $0x51, (%r8)
nop
and %rsi, %rsi

// Faulty Load
lea addresses_A+0x1c74c, %rax
inc %r8
movups (%rax), %xmm4
vpextrq $1, %xmm4, %r15
lea oracles, %rbp
and $0xff, %r15
shlq $12, %r15
mov (%rbp,%r15,1), %r15
pop %rsi
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'44': 14, '45': 19056, '46': 2759}
45 45 45 45 45 45 45 45 45 45 45 46 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 46 45 46 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 46 45 45 45 45 45 45 46 45 45 46 45 45 46 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 46 46 45 45 45 46 45 45 45 45 45 45 45 46 45 46 46 45 45 45 45 45 46 45 45 46 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 46 45 45 45 45 45 45 46 45 45 45 46 46 45 46 46 45 46 46 45 46 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 46 45 45 46 45 45 45 45 45 45 45 45 46 45 45 46 45 46 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 46 45 46 46 45 45 45 45 45 45 45 45 45 46 45 45 46 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 46 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 46 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 46 45 45 46 46 45 45 45 45 45 46 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 46 45 45 45 45 46 45 46 45 45 45 45 45 45 45 45 46 45 45 45 46 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 46 45 45 46 45 45 45 46 45 45 45 45 45 45 45 45 45 46 45 45 45 45 46 45 45 45 45 45 46 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 46 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 46 46 45 46 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 46 45 45 45 45 45 46 45 45 45 45 46 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 46 45 45 45 45 46 45 45 45 45 45 45 46 45 46 45 45 45 45 46 45 45 45 45 45 46 45 46 45 45 45 46 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 46 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 46 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 46 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 46 46 45 45 46 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45
*/
