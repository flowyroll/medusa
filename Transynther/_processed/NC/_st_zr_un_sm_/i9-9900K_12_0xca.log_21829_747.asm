.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x8c7a, %rbp
nop
nop
nop
nop
nop
sub %r14, %r14
mov $0x6162636465666768, %r9
movq %r9, %xmm5
and $0xffffffffffffffc0, %rbp
movaps %xmm5, (%rbp)
nop
dec %r13
lea addresses_D_ht+0x1a306, %r12
nop
nop
nop
xor $20466, %rdx
mov (%r12), %rbx
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_UC_ht+0x198ba, %r13
nop
nop
nop
nop
nop
and %r14, %r14
mov (%r13), %rdx
nop
nop
nop
dec %rdx
lea addresses_UC_ht+0x727a, %rsi
lea addresses_A_ht+0x767a, %rdi
nop
nop
nop
nop
nop
add %r13, %r13
mov $104, %rcx
rep movsb
nop
nop
nop
nop
nop
and $41830, %rdx
lea addresses_normal_ht+0x17f8a, %r14
and %rbx, %rbx
mov $0x6162636465666768, %rbp
movq %rbp, (%r14)
xor %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r9
push %rbp
push %rdx
push %rsi

// Store
lea addresses_normal+0xf661, %rsi
nop
and $19109, %r9
movb $0x51, (%rsi)
nop
nop
and %r14, %r14

// Store
mov $0x44fcf1000000027a, %r9
nop
nop
sub $10174, %rbp
mov $0x5152535455565758, %r14
movq %r14, (%r9)
nop
nop
nop
sub $43582, %r9

// Faulty Load
mov $0x44fcf1000000027a, %rdx
sub $17568, %r9
mov (%rdx), %bp
lea oracles, %r11
and $0xff, %rbp
shlq $12, %rbp
mov (%r11,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': True, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'60': 1499, '00': 133, '58': 20197}
58 58 58 58 58 58 58 58 58 58 58 58 60 58 58 58 58 58 58 58 58 58 58 60 00 58 58 58 58 58 58 58 58 58 60 58 60 58 58 58 58 58 58 58 58 58 58 58 60 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 60 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 60 58 60 60 58 58 58 58 58 60 58 58 58 58 58 58 58 58 58 58 58 58 58 60 58 58 58 58 58 58 58 60 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 60 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 60 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 60 58 58 00 58 58 58 58 58 60 58 58 58 58 58 58 58 58 58 60 58 58 58 58 58 60 58 58 58 60 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 60 58 60 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 60 58 58 58 58 58 58 60 58 60 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 60 58 58 58 58 58 58 58 58 58 58 60 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 60 60 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 60 58 58 58 60 58 58 58 58 58 58 58 58 58 58 58 60 58 58 58 60 60 58 58 58 58 58 60 58 58 60 58 58 58 58 58 60 58 58 58 60 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 60 58 58 58 58 58 58 58 58 58 58 58 58 60 58 58 60 58 60 60 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 60 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 60 58 58 58 58 58 58 58 58 58 58 58 60 60 58 58 58 58 58 58 58 60 58 58 60 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 60 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 60 58 58 58 58 58 58 58 58 58 58 58 58 58 60 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 60 58 60 58 60 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 60 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 60 58 58 58 58 58 60 58 58 58 58 58 58 58 58 58 58 60 58 60 58 58 58 58 58 60 58 58 58 58 58 58 58 58 58 58 58 60 00 58 58 58 58 58 58 58 58 58 60 58 58 60 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 60 58 58 58 58 58 58 58 58 58 58 58 58 60 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 60 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 60 58 58 58 58 60 58 58 58 58 58 58 58 58 60 58 58 58 58 58 58 58 58 58 58 58 60 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 60 58 58 58 58 58 58 58 58 58 58 60 58 58 58 58 58 60 58 58 58 58 58 58 60 60 58 58 58 58 58 58 58 58 58 58 58 58 58 60 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 60 58 58 58 58 58 58 00 58 58
*/
