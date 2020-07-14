.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x17e4c, %rsi
lea addresses_normal_ht+0x1764c, %rdi
nop
nop
nop
nop
sub $35042, %rax
mov $7, %rcx
rep movsq
inc %rcx
lea addresses_D_ht+0x1b2e0, %rdi
and $21635, %r14
mov $0x6162636465666768, %rbx
movq %rbx, (%rdi)
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x1524c, %rax
add %rdx, %rdx
movl $0x61626364, (%rax)
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0xe9dc, %rsi
lea addresses_A_ht+0x1924c, %rdi
nop
cmp $28313, %r14
mov $80, %rcx
rep movsb
nop
nop
nop
nop
sub $48486, %rdi
lea addresses_normal_ht+0xddec, %r14
nop
nop
nop
nop
xor $8208, %rdx
mov (%r14), %rsi
nop
nop
nop
nop
nop
add $10496, %r14
lea addresses_WT_ht+0x175e5, %rsi
lea addresses_WT_ht+0x9e5, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and $50931, %r11
mov $99, %rcx
rep movsw
nop
nop
nop
nop
mfence
lea addresses_normal_ht+0x10848, %rsi
lea addresses_WC_ht+0x6a1c, %rdi
nop
nop
mfence
mov $95, %rcx
rep movsb
sub %rbx, %rbx
lea addresses_normal_ht+0xcc58, %r14
nop
nop
nop
nop
inc %rdi
movb $0x61, (%r14)
nop
nop
nop
nop
nop
sub $50690, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %r9
push %rbx
push %rdi

// Faulty Load
lea addresses_US+0xea4c, %r11
nop
nop
nop
nop
and $18972, %r15
movntdqa (%r11), %xmm7
vpextrq $1, %xmm7, %r10
lea oracles, %r11
and $0xff, %r10
shlq $12, %r10
mov (%r11,%r10,1), %r10
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 10}, 'dst': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': True, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'44': 4, '49': 14105, '00': 138, '48': 7582}
48 49 49 00 49 48 49 49 00 48 49 48 49 48 49 48 00 00 49 49 48 49 48 49 48 49 48 49 49 48 49 49 48 49 49 48 49 48 49 49 49 48 49 49 48 49 49 49 49 49 49 49 48 49 48 49 48 49 48 49 49 48 49 49 49 48 49 48 49 49 48 49 49 48 49 49 48 49 49 48 49 49 49 48 49 48 49 49 49 48 49 49 48 49 49 48 49 49 48 49 49 49 49 49 48 49 48 49 48 49 48 49 48 49 49 49 49 48 49 49 49 48 49 48 49 49 48 49 49 48 49 49 48 49 49 49 48 49 48 49 49 49 48 49 48 49 49 48 49 49 48 49 49 48 49 49 49 49 49 48 49 49 49 48 49 48 49 49 49 49 49 48 49 49 49 48 49 49 48 49 49 49 49 49 48 49 48 49 49 49 48 49 48 49 49 49 49 49 49 48 49 48 49 48 49 48 49 48 49 49 48 49 49 48 49 49 48 49 48 49 48 49 48 49 48 49 49 49 48 49 48 49 48 49 48 49 49 48 49 49 49 48 49 48 49 49 49 48 49 48 49 49 48 49 49 48 49 49 49 48 49 48 49 48 48 49 48 49 48 49 48 49 49 48 49 49 49 48 49 48 49 48 49 48 49 48 49 48 49 49 49 49 00 49 48 00 49 49 48 49 48 49 48 49 48 49 48 49 48 49 49 49 48 49 49 48 49 49 48 49 49 48 49 49 48 49 48 49 48 49 49 48 49 48 49 48 49 48 49 48 49 49 48 49 48 49 48 49 49 48 49 48 49 49 48 49 49 48 49 49 48 48 49 49 48 49 48 49 49 48 49 49 48 49 49 48 49 49 48 49 49 48 49 48 49 49 49 48 49 48 49 49 48 49 49 48 49 49 48 49 49 48 49 48 49 48 48 49 48 49 48 49 48 49 49 49 48 49 48 49 49 48 49 48 49 48 49 49 49 49 49 48 49 48 49 49 48 49 48 49 48 49 48 49 48 49 49 48 49 48 49 49 49 48 49 48 49 48 49 49 48 49 48 49 49 48 49 48 49 48 49 49 49 49 48 49 48 49 49 49 49 48 48 49 49 48 49 49 48 48 49 48 49 48 49 49 48 49 49 48 49 49 48 48 49 48 49 49 48 49 48 49 48 49 49 49 49 49 48 49 48 49 48 49 49 49 48 49 49 49 48 49 49 48 49 48 49 48 49 48 49 48 48 49 49 49 49 49 49 48 49 49 49 48 49 49 48 49 49 49 48 49 49 48 49 49 48 49 49 48 49 49 48 49 49 49 48 49 48 49 49 49 48 49 48 49 49 48 48 49 48 49 48 49 49 49 49 49 49 48 49 49 49 48 49 48 49 49 49 49 49 49 48 49 48 49 49 48 49 49 49 48 49 49 48 49 48 49 49 49 48 49 48 49 49 48 49 49 49 48 49 49 48 49 49 48 49 48 49 49 49 49 48 49 49 48 49 49 49 49 49 49 48 49 48 49 48 49 48 49 49 48 49 49 49 49 49 48 49 48 49 49 49 48 49 48 49 49 48 49 49 49 48 49 48 49 49 48 49 49 49 48 49 49 49 49 49 49 49 49 48 49 49 48 49 48 49 48 49 49 49 49 48 49 48 49 49 48 49 49 48 49 48 49 48 49 48 49 49 49 49 49 48 49 49 48 49 49 48 49 49 49 49 49 48 49 49 48 49 49 48 49 48 49 49 49 48 49 48 49 49 49 48 49 48 49 49 49 48 49 49 48 49 48 49 49 49 48 49 49 48 49 49 48 49 48 49 48 49 49 49 49 48 49 49 48 49 49 48 49 48 49 49 49 48 49 48 49 49 48 49 49 49 48 49 48 49 49 48 49 49 49 49 48 49 48 49 48 49 48 49 49 48 49 49 48 49 49 49 48 49 48 49 49 48 49 49 48 49 49 49 49 49 49 48 49 49 49 48 48 49 49 49 48 49 49 49 48 49 48 48 49 48 49 48 49 48 48 49 49 48 49 49 48 49 48 49 48 49 49 48 49 49 48 49 48 49 49 49 49 48 49 49 48 49 48 49 48 49 49 48 49 49 48 49 49 48 49 49 48 49 48 49 49 48 49 49 49 48 49 48 49 49 48 49 49 48 49 49 48 49 49 49 48 49 48 49 49 49 49 49 48 49 49 49 48 49 48 49 49 48 49 49 48 49 49 48 49 49 49 48 49 48 49 49 49 48 49 49 48 49 49 49 49 49 48 49 48 49 49
*/
