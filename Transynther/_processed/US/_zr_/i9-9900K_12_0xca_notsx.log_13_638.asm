.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1dd65, %rbp
nop
nop
nop
nop
inc %r8
movl $0x61626364, (%rbp)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x8f65, %rsi
lea addresses_normal_ht+0x12e05, %rdi
nop
nop
nop
nop
nop
dec %r13
mov $67, %rcx
rep movsq
nop
nop
nop
and $57691, %rsi
lea addresses_WC_ht+0x16c5f, %rdi
nop
nop
and $64152, %r13
movw $0x6162, (%rdi)
nop
nop
nop
nop
cmp $57823, %rcx
lea addresses_WC_ht+0x17fe5, %rbp
nop
nop
xor $13395, %r13
movb $0x61, (%rbp)
nop
nop
nop
nop
inc %rbp
lea addresses_A_ht+0x15365, %rbp
clflush (%rbp)
nop
nop
inc %rdi
movups (%rbp), %xmm2
vpextrq $0, %xmm2, %r8
nop
nop
nop
nop
and $53495, %rdi
lea addresses_UC_ht+0x13e25, %rsi
lea addresses_D_ht+0x19365, %rdi
nop
nop
nop
nop
nop
inc %r11
mov $94, %rcx
rep movsw
nop
xor $29119, %r11
lea addresses_D_ht+0x1595, %rcx
nop
nop
sub %r11, %r11
mov $0x6162636465666768, %r8
movq %r8, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
nop
nop
add $61771, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %rax
push %rcx
push %rdx

// Store
lea addresses_normal+0xa06d, %r13
cmp %r12, %r12
movl $0x51525354, (%r13)
nop
nop
dec %rdx

// Faulty Load
lea addresses_US+0x4365, %rcx
nop
nop
nop
nop
nop
add %r15, %r15
movb (%rcx), %r11b
lea oracles, %r15
and $0xff, %r11
shlq $12, %r11
mov (%r15,%r11,1), %r11
pop %rdx
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'00': 13}
00 00 00 00 00 00 00 00 00 00 00 00 00
*/
