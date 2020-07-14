.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x139a5, %rdi
nop
nop
add %r13, %r13
mov $0x6162636465666768, %r14
movq %r14, %xmm6
movups %xmm6, (%rdi)
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x69a5, %rsi
nop
nop
nop
nop
and $5505, %r12
mov (%rsi), %rbx
nop
nop
nop
nop
nop
dec %rbx
lea addresses_UC_ht+0x118a5, %rsi
lea addresses_D_ht+0x5c45, %rdi
nop
nop
nop
nop
nop
sub $46505, %rbx
mov $84, %rcx
rep movsb
nop
sub %rdi, %rdi
lea addresses_UC_ht+0xbda5, %rsi
lea addresses_WT_ht+0x181a5, %rdi
nop
nop
nop
nop
xor $20731, %r13
mov $90, %rcx
rep movsw
nop
nop
nop
nop
and $4782, %rdi
lea addresses_WC_ht+0x18375, %rsi
lea addresses_normal_ht+0x87a5, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub $56598, %r12
mov $121, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $1113, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %rbp
push %rbx
push %rcx

// Store
lea addresses_WT+0x2cb9, %r14
nop
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %r12
movq %r12, %xmm0
movups %xmm0, (%r14)
nop
nop
nop
and $38286, %r8

// Store
lea addresses_WT+0xd243, %r11
nop
add %rbp, %rbp
movl $0x51525354, (%r11)
nop
and %r14, %r14

// Load
lea addresses_A+0xdfa5, %r11
nop
nop
nop
nop
nop
add $8077, %rcx
mov (%r11), %r14d
nop
nop
nop
nop
nop
and $48863, %rbp

// Faulty Load
lea addresses_A+0xdfa5, %r14
nop
nop
nop
nop
sub $29227, %r11
movups (%r14), %xmm3
vpextrq $1, %xmm3, %rbx
lea oracles, %rcx
and $0xff, %rbx
shlq $12, %rbx
mov (%rcx,%rbx,1), %rbx
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': True, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': True, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 11}}
{'00': 14460, '48': 7369}
00 00 48 48 00 48 00 00 48 00 48 00 00 48 00 48 00 00 00 00 48 00 00 48 00 48 00 00 48 00 48 48 00 48 00 48 00 00 00 48 00 00 00 00 48 00 48 00 00 48 00 48 48 00 48 00 00 00 00 00 00 48 00 48 48 48 48 00 48 00 00 48 00 48 00 00 48 00 00 00 48 00 00 48 00 00 48 00 48 00 00 48 00 48 00 00 48 00 48 00 00 48 00 00 00 00 48 00 00 00 00 48 48 48 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 48 48 00 00 00 48 00 48 00 00 48 00 00 00 00 48 00 48 00 00 48 00 48 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 48 00 48 00 00 48 48 00 48 00 48 00 00 48 00 48 48 00 00 00 00 00 48 48 00 48 00 00 00 48 00 00 48 48 48 00 00 00 00 48 00 00 00 48 00 00 48 00 00 00 00 48 48 48 00 00 48 48 00 48 48 00 00 00 48 00 00 00 00 48 48 00 00 00 48 00 48 48 00 48 00 00 48 00 00 00 00 48 00 00 00 00 00 00 48 48 48 00 48 48 00 00 48 48 00 48 48 00 00 00 00 48 00 48 00 00 00 00 48 00 48 00 00 48 00 48 00 00 48 48 00 48 48 00 00 48 00 00 48 00 48 00 00 00 00 48 48 00 00 00 00 00 00 00 00 48 00 48 00 48 48 00 00 48 00 00 00 48 00 48 00 00 48 00 00 00 48 00 00 00 48 00 00 48 00 00 00 00 48 48 00 48 00 48 00 00 48 48 48 00 00 00 48 00 00 48 00 48 00 00 48 00 00 00 48 00 00 48 00 00 00 00 48 00 48 00 00 00 00 00 48 00 48 00 00 48 00 48 48 00 48 00 48 00 00 48 00 48 00 00 00 00 48 00 00 00 48 48 00 00 00 48 00 00 48 00 00 00 48 00 48 00 00 00 00 00 00 00 48 00 00 48 00 48 48 48 48 00 00 48 00 48 48 00 00 00 48 00 00 48 00 48 00 00 00 00 00 00 48 00 00 48 00 00 00 00 48 48 00 00 00 00 00 00 00 00 48 00 48 00 00 48 00 00 00 48 00 00 00 00 48 00 48 00 00 48 00 48 00 00 48 00 48 00 00 00 00 00 48 48 48 00 00 00 48 00 48 48 00 48 00 48 00 00 48 48 48 00 00 48 00 48 00 00 48 48 48 00 00 48 00 00 00 00 00 48 00 48 00 00 48 00 48 00 00 00 00 48 00 48 00 00 00 00 00 48 00 48 00 00 00 48 00 48 00 00 48 00 48 00 00 48 00 00 00 00 48 00 48 00 00 48 00 00 48 00 48 00 00 00 48 48 00 00 00 48 00 00 00 00 48 48 00 48 00 00 48 00 48 00 00 00 00 48 00 00 48 00 48 00 00 48 00 48 00 00 48 48 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 48 00 00 00 48 00 00 00 00 48 00 48 00 00 48 00 00 00 48 48 00 00 00 00 48 00 48 00 00 48 00 48 48 00 48 00 00 00 00 48 00 48 00 00 48 00 48 00 00 00 48 00 00 00 00 48 00 48 48 00 48 00 00 00 00 48 00 00 48 00 48 00 00 48 00 00 00 00 48 48 48 00 00 48 00 00 00 00 48 00 00 48 00 48 00 00 48 00 48 00 48 00 00 48 48 48 00 00 48 00 48 00 00 48 48 48 00 48 00 00 00 48 00 48 00 00 48 48 00 48 00 48 00 00 48 48 00 00 48 48 00 00 48 00 00 48 00 48 00 48 48 00 00 00 00 48 48 00 00 00 48 00 48 00 00 48 00 00 00 48 00 00 48 00 48 00 00 00 00 48 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 48 00 48 00 48 00 00 48 48 00 00 48 00 00 00 00 48 48 00 48 48 00 00 48 00 00 48 00 48 00 00 00 00 00 00 48 00 00 00 00 48 00 48 48 00 48 48 48 00 00 48 00 48 00 48 48 00 48 00 00 48 00 00 00 00 00 00 48 00 00 48 00 00 00 00 48 00 00 00 00 48 00 48 00 48 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 48 48 00 00 00 48 00 00 00 00 48 00 48 00 00 48 00 00 00 00 48 00 00 00
*/
