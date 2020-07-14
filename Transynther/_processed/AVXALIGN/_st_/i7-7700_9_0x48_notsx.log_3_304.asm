.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xd45e, %rsi
lea addresses_WC_ht+0x14b5e, %rdi
nop
cmp %r9, %r9
mov $61, %rcx
rep movsb
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x1c2b6, %rsi
nop
xor $18331, %r13
mov $0x6162636465666768, %rax
movq %rax, (%rsi)
nop
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %r9
push %rax
push %rcx
push %rdi

// Store
mov $0x6e3b110000000e1e, %rcx
nop
nop
nop
inc %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm4
vmovups %ymm4, (%rcx)
nop
add $3865, %r8

// Faulty Load
lea addresses_RW+0x3b5e, %r8
nop
nop
nop
add %r9, %r9
movb (%r8), %al
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 3}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': True, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 3}, 'OP': 'STOR'}
{'32': 3}
32 32 32
*/
