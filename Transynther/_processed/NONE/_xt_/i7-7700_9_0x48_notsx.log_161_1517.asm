.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x190b5, %rsi
lea addresses_WC_ht+0x1a06d, %rdi
nop
nop
nop
nop
nop
cmp %r9, %r9
mov $92, %rcx
rep movsl
nop
and %rdi, %rdi
lea addresses_D_ht+0x1c043, %rdx
nop
nop
and %r10, %r10
mov $0x6162636465666768, %r9
movq %r9, (%rdx)
nop
nop
add %rsi, %rsi
lea addresses_UC_ht+0xb7ed, %rsi
lea addresses_A_ht+0x1e9e1, %rdi
clflush (%rdi)
nop
xor %r11, %r11
mov $21, %rcx
rep movsq
nop
xor $63366, %rdx
lea addresses_D_ht+0xefd, %rsi
lea addresses_D_ht+0x11d6d, %rdi
cmp %r11, %r11
mov $74, %rcx
rep movsl
nop
nop
nop
and $47717, %rsi
lea addresses_WC_ht+0x1c12d, %rsi
lea addresses_normal_ht+0x1a16d, %rdi
clflush (%rdi)
nop
nop
nop
nop
inc %rbp
mov $50, %rcx
rep movsb
nop
nop
cmp $48525, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %r9
push %rax
push %rdx
push %rsi

// Store
lea addresses_UC+0x916d, %rsi
nop
nop
add %r10, %r10
movl $0x51525354, (%rsi)
nop
nop
nop
nop
xor $3936, %r10

// Store
mov $0x217c080000000951, %rax
nop
sub %rdx, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%rax)
nop
nop
nop
xor %r10, %r10

// Store
lea addresses_US+0x144d1, %r8
nop
and $3191, %r9
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
movaps %xmm5, (%r8)
sub %r10, %r10

// Faulty Load
lea addresses_D+0x1216d, %rax
nop
and $23329, %rdx
movb (%rax), %r10b
lea oracles, %rdx
and $0xff, %r10
shlq $12, %r10
mov (%rdx,%r10,1), %r10
pop %rsi
pop %rdx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_US', 'congruent': 1}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'36': 161}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
