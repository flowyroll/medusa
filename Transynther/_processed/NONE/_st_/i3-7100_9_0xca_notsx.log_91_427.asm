.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x584, %rsi
lea addresses_A_ht+0xf584, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add $58126, %r8
mov $68, %rcx
rep movsb
nop
nop
and %r14, %r14
lea addresses_D_ht+0x154c6, %rsi
lea addresses_D_ht+0x3384, %rdi
nop
nop
and $24847, %r11
mov $2, %rcx
rep movsq
nop
nop
nop
nop
nop
lfence
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rax
push %rcx
push %rdx
push %rsi

// Store
lea addresses_PSE+0x1ab84, %rsi
nop
nop
nop
nop
and $27988, %rdx
movb $0x51, (%rsi)
cmp %rax, %rax

// Store
mov $0x6c336d0000000784, %rcx
nop
nop
nop
add $31614, %r9
movl $0x51525354, (%rcx)
nop
sub $64176, %r11

// Store
lea addresses_WC+0x5704, %rsi
clflush (%rsi)
nop
nop
inc %rax
movw $0x5152, (%rsi)
dec %rdx

// Faulty Load
lea addresses_A+0xbb84, %r11
nop
nop
nop
nop
nop
and $5380, %rdx
mov (%r11), %eax
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'51': 91}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
