.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xab65, %rsi
lea addresses_UC_ht+0x1dc59, %rdi
nop
nop
nop
nop
sub %rbp, %rbp
mov $48, %rcx
rep movsw
nop
sub $37263, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r9
push %rax
push %rbp
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x1da0a, %rsi
nop
nop
and $64654, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, (%rsi)
nop
cmp $39894, %rdi

// Store
lea addresses_D+0x1279, %r9
nop
nop
sub %rbx, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%r9)
nop
inc %rbp

// Faulty Load
lea addresses_RW+0x3459, %rdi
nop
nop
nop
add %rdx, %rdx
vmovntdqa (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbx
lea oracles, %rbp
and $0xff, %rbx
shlq $12, %rbx
mov (%rbp,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r9
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'63': 1, '4b': 2, '09': 1, 'b0': 1, 'f6': 3, '85': 2, 'e0': 2, 'a6': 1, 'ee': 4, '86': 1, '49': 7, '32': 2, 'ea': 1, 'fd': 2, '53': 1, 'a7': 13, '74': 1, '4a': 1, 'f8': 1, 'f4': 1}
a7 74 a7 a7 f6 f6 f6 a7 a7 a7 ee ee ee ee 53 86 85 85 63 a7 49 a7 f4 a7 a7 4a 49 ea 09 4b a7 a7 49 4b a7 e0 e0 fd fd b0 32 32 49 49 49 49 a6 f8
*/
