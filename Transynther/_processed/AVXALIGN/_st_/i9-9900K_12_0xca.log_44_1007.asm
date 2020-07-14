.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x162cf, %rsi
lea addresses_WT_ht+0xeacf, %rdi
nop
nop
nop
nop
nop
add %r10, %r10
mov $32, %rcx
rep movsw
nop
dec %rsi
lea addresses_UC_ht+0xe7f, %r13
xor %r8, %r8
mov (%r13), %rsi
add %r13, %r13
lea addresses_A_ht+0xac27, %rdi
clflush (%rdi)
nop
xor $14907, %rdx
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
cmp $59917, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rax
push %rbp
push %rcx
push %rdi

// Store
mov $0x97f, %rax
nop
nop
and $53683, %rbp
movb $0x51, (%rax)
nop
nop
nop
cmp %r13, %r13

// Store
mov $0x322e78000000093c, %r11
clflush (%r11)
nop
nop
nop
inc %rax
movb $0x51, (%r11)
nop
nop
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_PSE+0x10a9b, %r11
nop
nop
and $49987, %r8
mov $0x5152535455565758, %rcx
movq %rcx, (%r11)
add %r11, %r11

// Store
lea addresses_WC+0x22cf, %rbp
cmp %rcx, %rcx
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovaps %ymm7, (%rbp)
nop
and $11366, %rax

// Store
mov $0xe0f, %r11
nop
and %rdi, %rdi
mov $0x5152535455565758, %r13
movq %r13, %xmm0
movaps %xmm0, (%r11)
nop
nop
nop
add $39722, %r8

// Load
mov $0x56d09d000000064f, %rdi
nop
nop
nop
nop
cmp $48846, %r11
mov (%rdi), %r13w
nop
nop
nop
nop
inc %r11

// Store
lea addresses_D+0x5803, %r8
clflush (%r8)
nop
nop
nop
add %rcx, %rcx
movl $0x51525354, (%r8)
nop
xor $17636, %r13

// Store
lea addresses_A+0x1b6cf, %rdi
nop
cmp $46040, %r11
movl $0x51525354, (%rdi)
nop
nop
nop
nop
and %rbp, %rbp

// Faulty Load
lea addresses_PSE+0x3acf, %rdi
nop
nop
nop
nop
sub $56015, %r8
mov (%rdi), %ebp
lea oracles, %r8
and $0xff, %rbp
shlq $12, %rbp
mov (%r8,%rbp,1), %rbp
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': True, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': True, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': True, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': True, 'type': 'addresses_PSE', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': True, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': True, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'33': 44}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
