.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rcx
push %rsi
lea addresses_WC_ht+0x1d051, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
add $50623, %r9
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
inc %rsi
pop %rsi
pop %rcx
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x1ddd1, %r12
clflush (%r12)
nop
nop
nop
nop
nop
inc %r15
mov $0x5152535455565758, %rsi
movq %rsi, (%r12)
inc %rsi

// Store
mov $0x3a8f380000000d91, %rdi
nop
nop
xor $10014, %rbp
mov $0x5152535455565758, %r15
movq %r15, %xmm2
movups %xmm2, (%rdi)
and $52816, %r9

// Load
lea addresses_RW+0x215, %rbp
nop
cmp $25782, %r15
mov (%rbp), %esi
nop
nop
inc %r12

// Store
lea addresses_A+0x1ee99, %rcx
nop
nop
nop
xor $18684, %rsi
movl $0x51525354, (%rcx)
nop
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_UC+0x14911, %rbp
nop
nop
nop
nop
dec %rsi
movb $0x51, (%rbp)
dec %rdi

// Faulty Load
lea addresses_US+0x7f91, %r12
nop
nop
nop
nop
nop
cmp %r15, %r15
mov (%r12), %edi
lea oracles, %rbp
and $0xff, %rdi
shlq $12, %rdi
mov (%rbp,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 1}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC', 'congruent': 7}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 6}, 'OP': 'STOR'}
{'00': 4}
00 00 00 00
*/
