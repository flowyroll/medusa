.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %rcx
push %rdx
push %rsi
lea addresses_D_ht+0x182b1, %rsi
add %rdx, %rdx
and $0xffffffffffffffc0, %rsi
vmovntdqa (%rsi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rcx
nop
nop
sub %r15, %r15
pop %rsi
pop %rdx
pop %rcx
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %r9
push %rax
push %rdi
push %rdx

// Store
lea addresses_normal+0x1deb1, %rdi
nop
nop
nop
nop
nop
xor $4939, %r15
mov $0x5152535455565758, %rax
movq %rax, %xmm5
vmovaps %ymm5, (%rdi)
nop
nop
nop
nop
nop
sub $26738, %rdi

// Store
mov $0x38d32e0000000cb1, %rax
nop
nop
nop
nop
nop
add $62585, %rdx
mov $0x5152535455565758, %r9
movq %r9, (%rax)
nop
nop
nop
nop
sub $21347, %rax

// Store
lea addresses_US+0x120d1, %r8
nop
nop
nop
xor %r11, %r11
mov $0x5152535455565758, %r15
movq %r15, %xmm7
movaps %xmm7, (%r8)
nop
nop
inc %rdi

// Faulty Load
lea addresses_normal+0x1deb1, %r15
nop
nop
nop
nop
nop
inc %r9
movb (%r15), %dl
lea oracles, %r8
and $0xff, %rdx
shlq $12, %rdx
mov (%r8,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 4, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 136}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
