.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x16996, %rsi
lea addresses_A_ht+0x73a6, %rdi
clflush (%rsi)
nop
dec %r14
mov $64, %rcx
rep movsq
nop
nop
nop
nop
inc %r14
pop %rsi
pop %rdi
pop %rcx
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %rbx
push %rcx
push %rdi

// Store
lea addresses_US+0x1805e, %rdi
nop
nop
nop
sub $44233, %r14
movl $0x51525354, (%rdi)
nop
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_UC+0x1a2de, %rbx
nop
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %r14
movq %r14, %xmm6
vmovups %ymm6, (%rbx)
nop
nop
xor $5844, %r10

// Load
lea addresses_WT+0x835e, %r14
nop
nop
nop
xor %r12, %r12
movb (%r14), %r11b
nop
add $5186, %r14

// Store
lea addresses_normal+0xd7a8, %r11
nop
nop
nop
and %r12, %r12
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
sub $62726, %rcx

// Load
lea addresses_WC+0x18c5e, %rbx
add %r14, %r14
mov (%rbx), %di
and %r11, %r11

// Store
lea addresses_A+0x985e, %rbx
add %r12, %r12
movb $0x51, (%rbx)
nop
nop
nop
nop
nop
cmp $6429, %r12

// Faulty Load
mov $0x51d94a000000085e, %rdi
nop
nop
sub $45984, %r10
mov (%rdi), %r11d
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': True, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 1}}
{'51': 13266, '00': 8563}
51 51 00 51 00 51 51 00 51 51 51 51 00 51 00 00 00 51 00 51 00 00 00 00 00 00 51 00 51 51 51 51 51 00 51 00 00 51 51 51 00 00 51 00 51 00 51 51 51 51 00 51 51 51 51 00 00 51 51 00 51 51 51 51 00 51 00 00 51 00 51 51 00 00 00 51 51 00 51 51 51 51 51 51 00 00 51 51 51 51 51 51 00 51 51 00 00 51 00 00 51 51 00 51 51 51 51 00 51 00 00 51 51 51 51 51 51 51 00 00 51 51 51 51 00 51 51 00 51 00 51 51 00 51 51 51 51 51 00 51 51 51 00 51 00 51 51 51 51 51 00 00 00 51 00 51 00 00 51 00 51 51 00 51 51 00 51 51 51 00 00 51 00 00 51 51 00 00 51 51 00 51 51 00 00 51 51 51 51 00 00 00 51 00 51 51 51 51 51 00 51 00 51 00 51 51 51 51 51 51 00 00 51 51 51 00 51 00 00 51 51 51 00 51 51 51 51 51 00 00 00 51 51 51 00 51 00 51 51 51 00 00 00 51 00 51 51 00 51 51 00 00 51 51 51 00 00 00 51 51 00 00 51 51 51 51 00 51 00 51 51 00 51 00 00 51 51 00 51 51 51 00 51 00 00 00 51 00 51 51 00 51 51 51 00 00 00 51 00 51 51 51 00 51 51 00 51 00 51 51 00 51 51 51 51 51 51 00 51 00 51 51 00 51 00 51 51 51 51 00 51 51 51 00 00 51 00 51 00 51 51 00 51 00 00 51 51 00 51 51 51 51 51 51 00 51 51 00 00 51 51 00 51 00 51 51 00 51 51 51 51 51 00 51 00 51 51 00 51 00 51 51 00 00 51 00 51 51 51 00 51 51 51 51 00 51 00 51 00 51 00 51 00 51 00 51 51 00 00 00 51 00 51 00 51 00 00 00 51 00 51 00 00 51 51 51 51 51 00 00 51 00 00 51 51 00 00 51 51 51 51 51 00 00 00 51 51 51 51 51 51 00 00 51 00 51 51 51 00 51 00 00 51 51 51 51 51 00 51 51 51 00 51 51 00 00 51 00 51 00 51 51 00 51 51 51 51 51 00 51 00 00 00 00 51 51 51 51 51 51 00 51 51 00 51 51 00 00 51 00 51 51 51 00 00 51 51 00 51 51 51 51 51 00 51 51 00 00 51 51 51 51 51 51 00 00 00 00 00 00 00 51 51 00 51 51 00 51 00 00 51 51 51 00 51 00 00 51 00 51 00 51 51 51 00 00 51 00 51 00 51 51 51 51 51 51 00 00 00 51 51 00 51 51 51 51 51 51 00 51 51 51 51 51 51 00 51 00 51 51 51 51 00 00 51 00 00 00 51 51 00 51 00 51 00 51 00 51 51 51 00 51 51 51 00 00 51 00 51 00 51 51 51 51 00 51 51 00 51 00 51 51 51 51 51 51 00 00 51 51 00 00 51 51 51 00 51 00 00 51 51 00 51 00 00 51 51 51 00 51 51 00 00 00 51 51 51 00 51 00 51 00 51 51 00 00 51 00 51 51 00 51 00 51 00 51 00 00 51 51 51 00 00 51 51 51 00 00 00 51 51 00 00 51 51 00 00 51 00 51 00 00 51 51 00 51 00 51 51 51 51 51 00 00 00 00 00 51 51 51 00 00 51 00 51 00 00 51 51 51 00 51 00 00 51 51 00 51 00 00 51 00 00 00 51 00 51 00 51 00 51 00 51 51 51 51 51 00 00 00 00 51 00 51 00 51 51 00 51 00 51 51 00 51 00 00 00 51 51 51 00 00 00 51 00 51 00 00 51 51 51 00 51 00 51 51 00 51 51 51 00 00 51 51 51 51 51 51 00 00 00 51 00 51 00 51 51 51 51 51 51 00 51 00 51 51 51 00 00 51 00 51 00 51 00 51 51 00 51 00 00 51 51 51 51 51 51 00 00 51 51 00 51 51 00 51 51 51 00 00 51 51 00 51 00 51 00 51 00 51 51 00 51 00 51 51 00 51 51 51 51 00 51 00 51 51 00 51 51 00 51 51 51 51 00 51 51 51 00 51 00 00 51 51 51 51 00 51 51 51 51 00 51 00 00 51 51 51 51 51 51 51 00 00 51 00 51 00 51 00 51 00 00 00 51 51 51 51 00 00 00 00 00 51 51 51 51 00 00 51 51 51 00 00 51 51 00 51 51 51 51 51 00 51 00 51 51 51 00 51 51 51 51 00 51 51 51 00 51 51
*/
