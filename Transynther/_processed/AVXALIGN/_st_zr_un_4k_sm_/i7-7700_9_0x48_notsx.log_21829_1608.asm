.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x4b3c, %r11
nop
dec %r8
mov $0x6162636465666768, %rbp
movq %rbp, %xmm5
and $0xffffffffffffffc0, %r11
movaps %xmm5, (%r11)
nop
add %r11, %r11
lea addresses_WT_ht+0x1be92, %rdi
nop
nop
nop
nop
xor %r11, %r11
movl $0x61626364, (%rdi)
nop
inc %r8
lea addresses_UC_ht+0x1a592, %r9
nop
nop
nop
dec %r12
movl $0x61626364, (%r9)
nop
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0xf352, %rsi
lea addresses_D_ht+0x186d2, %rdi
nop
nop
nop
nop
dec %rbp
mov $87, %rcx
rep movsq
and $37064, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_D+0x10292, %rdx
nop
cmp $49478, %rax
mov $0x5152535455565758, %r8
movq %r8, %xmm1
movups %xmm1, (%rdx)
xor %rbx, %rbx

// Store
lea addresses_normal+0xa292, %rbp
nop
add %r13, %r13
mov $0x5152535455565758, %rax
movq %rax, %xmm0
movups %xmm0, (%rbp)
nop
sub $6591, %rbx

// Store
lea addresses_UC+0x194d4, %rdx
nop
nop
nop
nop
nop
cmp $26826, %rbx
movw $0x5152, (%rdx)
nop
cmp $38928, %rax

// Faulty Load
lea addresses_D+0x10292, %rbx
nop
nop
and %r8, %r8
movaps (%rbx), %xmm3
vpextrq $0, %xmm3, %rdx
lea oracles, %rax
and $0xff, %rdx
shlq $12, %rdx
mov (%rax,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'6d': 3444, '58': 18030, '00': 355}
58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 00 58 6d 58 58 58 58 6d 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 6d 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 6d 58 6d 6d 6d 00 58 00 58 6d 58 00 6d 58 6d 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 6d 58 58 6d 6d 58 58 58 58 58 58 6d 58 6d 58 58 58 58 58 58 58 58 58 6d 6d 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 6d 58 58 6d 6d 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 6d 6d 58 58 58 6d 58 6d 58 6d 58 00 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 6d 00 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 6d 58 6d 58 58 58 58 58 58 58 58 58 6d 6d 58 58 58 58 58 58 58 58 6d 58 58 58 58 6d 58 58 6d 58 6d 58 00 58 6d 58 58 58 58 58 58 58 58 6d 6d 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 6d 6d 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 6d 58 58 58 58 6d 58 6d 58 58 58 58 58 58 6d 58 58 58 6d 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 6d 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 6d 58 58 58 58 58 58 58 6d 6d 58 58 58 58 6d 58 58 6d 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 6d 58 6d 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 6d 6d 58 58 58 6d 58 58 58 58 58 58 58 6d 58 6d 58 6d 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 6d 58 58 6d 58 6d 58 58 58 58 58 6d 6d 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 6d 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 6d 58 58 6d 58 58 58 58 58 6d 58 6d 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 00 58 58 6d 00 58 58 6d 58 58 58 6d 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 6d 58 58 58 58 6d 58 58 58 6d 58 58 58 58 58 58 58 58 6d 58 58 58 00 58 58 58 58 6d 6d 58 58 6d 58 58 58 58 6d 6d 58 6d 58 6d 6d 58 58 58 6d 58 58 58 58 58 58 6d 58 58 58 58 6d 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 6d 58 6d 58 58 58 6d 58 58 58 58 58 58 58 58 6d 6d 6d 6d 58 6d 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 6d 58 6d 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 6d 6d 58 6d 58 6d 58
*/
