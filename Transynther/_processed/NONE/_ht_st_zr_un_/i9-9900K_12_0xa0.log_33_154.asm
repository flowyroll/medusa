.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x51cf, %rsi
lea addresses_WT_ht+0xd0ef, %rdi
and $5547, %rbx
mov $60, %rcx
rep movsw
nop
and %rsi, %rsi
lea addresses_normal_ht+0xf8df, %rsi
nop
dec %r10
mov (%rsi), %r15
nop
nop
inc %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_WT+0x110df, %r12
nop
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm3
movups %xmm3, (%r12)
nop
nop
nop
nop
nop
sub $9473, %rbp

// Faulty Load
lea addresses_A+0x1f0df, %rsi
nop
nop
add %r13, %r13
vmovups (%rsi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rbx
lea oracles, %r11
and $0xff, %rbx
shlq $12, %rbx
mov (%r11,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': True, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'a9': 1, 'a4': 3, '51': 2, 'b0': 1, '58': 2, '06': 1, 'bf': 1, '49': 11, 'ea': 1, '08': 2, '00': 5, 'b8': 1, '9a': 1, 'b5': 1}
00 b8 58 58 49 49 49 49 49 49 49 49 49 49 49 00 a9 51 51 00 b5 ea 00 bf 06 00 9a b0 08 08 a4 a4 a4
*/
