.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x15436, %rdx
nop
nop
nop
nop
nop
and %r11, %r11
movw $0x6162, (%rdx)
and $3450, %r13
lea addresses_WT_ht+0x1e136, %rsi
lea addresses_D_ht+0xf1b6, %rdi
cmp $45827, %rax
mov $103, %rcx
rep movsb
nop
xor %rdx, %rdx
lea addresses_UC_ht+0xb4ae, %rdx
nop
cmp $4049, %r13
movw $0x6162, (%rdx)
nop
dec %rcx
lea addresses_A_ht+0x1a7e6, %rsi
sub $1403, %r13
mov (%rsi), %ax
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0xe836, %rax
clflush (%rax)
xor $12985, %r11
mov $0x6162636465666768, %rdi
movq %rdi, (%rax)
nop
nop
nop
nop
sub $46974, %r9
lea addresses_normal_ht+0x1e506, %r13
clflush (%r13)
nop
nop
nop
nop
nop
lfence
movb $0x61, (%r13)
nop
inc %r11
lea addresses_D_ht+0x11836, %rsi
lea addresses_normal_ht+0x1436, %rdi
nop
and %r9, %r9
mov $33, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_WC_ht+0x90d6, %rsi
lea addresses_WC_ht+0x5676, %rdi
clflush (%rsi)
nop
nop
nop
cmp %r9, %r9
mov $50, %rcx
rep movsw
nop
and $40398, %rdx
lea addresses_A_ht+0x14936, %rdi
clflush (%rdi)
xor $54864, %rcx
and $0xffffffffffffffc0, %rdi
movntdqa (%rdi), %xmm0
vpextrq $1, %xmm0, %rax
and %rdx, %rdx
lea addresses_D_ht+0xd7e6, %rsi
lea addresses_UC_ht+0x1c2b6, %rdi
nop
sub %rax, %rax
mov $60, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0x10d79, %rsi
lea addresses_WC_ht+0x14036, %rdi
nop
nop
sub %rdx, %rdx
mov $81, %rcx
rep movsl
nop
dec %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_UC+0x6636, %rcx
dec %r12
movw $0x5152, (%rcx)
add $44767, %r12

// Faulty Load
lea addresses_US+0x7836, %rdx
nop
nop
nop
add %r9, %r9
movb (%rdx), %r15b
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'dst': {'same': True, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'00': 12}
00 00 00 00 00 00 00 00 00 00 00 00
*/
