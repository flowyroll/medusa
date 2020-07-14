.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x8f35, %rbp
sub %rax, %rax
movb (%rbp), %bl
nop
nop
nop
cmp $8888, %rdx
lea addresses_UC_ht+0xac1d, %r11
nop
xor %rsi, %rsi
movb (%r11), %dl
nop
nop
nop
nop
dec %rax
lea addresses_WC_ht+0x5b6d, %rsi
nop
nop
nop
add $9912, %rdx
mov (%rsi), %ebx
nop
nop
nop
nop
nop
dec %rax
lea addresses_UC_ht+0x1b185, %rsi
lea addresses_A_ht+0x1a59d, %rdi
nop
sub %r11, %r11
mov $50, %rcx
rep movsq
nop
dec %rbx
lea addresses_WC_ht+0x13ec5, %rsi
lea addresses_UC_ht+0xd71d, %rdi
nop
nop
nop
nop
nop
dec %rdx
mov $12, %rcx
rep movsl
sub $56765, %rbx
lea addresses_WC_ht+0x1c081, %rdx
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm1
vmovups %ymm1, (%rdx)
add %rax, %rax
lea addresses_A_ht+0x3f1d, %rsi
lea addresses_normal_ht+0x7fd, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor $19001, %rax
mov $55, %rcx
rep movsq
nop
nop
nop
add %rdx, %rdx
lea addresses_WT_ht+0x1e18b, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, (%rsi)
nop
nop
nop
nop
dec %rcx
lea addresses_normal_ht+0x1a2e5, %rsi
nop
cmp $54330, %rdi
mov (%rsi), %ecx
nop
nop
nop
mfence
lea addresses_UC_ht+0x1cdc9, %rsi
lea addresses_normal_ht+0xec9d, %rdi
nop
nop
nop
sub $36036, %rbp
mov $70, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0xd31d, %rsi
lea addresses_D_ht+0x931d, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
dec %rbx
mov $117, %rcx
rep movsw
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0xf33d, %rbp
nop
nop
nop
nop
xor %r11, %r11
movups (%rbp), %xmm4
vpextrq $1, %xmm4, %rdx
nop
add $53290, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %r9
push %rax
push %rdx
push %rsi

// Store
lea addresses_A+0x25e1, %r14
nop
nop
nop
nop
add %rsi, %rsi
movw $0x5152, (%r14)
nop
and $30423, %rdx

// Store
lea addresses_D+0x5627, %rax
add $27873, %r8
movw $0x5152, (%rax)
nop
nop
nop
sub $57344, %rsi

// Store
mov $0x37e3bf0000000f1d, %rsi
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %r13
movq %r13, (%rsi)
add %rax, %rax

// Faulty Load
lea addresses_D+0x471d, %rax
nop
nop
nop
inc %r9
movb (%rax), %r8b
lea oracles, %rsi
and $0xff, %r8
shlq $12, %r8
mov (%rsi,%r8,1), %r8
pop %rsi
pop %rdx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': True, 'same': False, 'congruent': 1, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
