.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r9
push %rbx
push %rdx
push %rsi

// Store
mov $0x607, %r11
nop
nop
nop
nop
nop
add %r10, %r10
mov $0x5152535455565758, %r9
movq %r9, %xmm5
vmovaps %ymm5, (%r11)
nop
nop
nop
xor %r9, %r9

// Store
lea addresses_PSE+0x1bd27, %r10
nop
add %rdx, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%r10)
nop
nop
nop
nop
nop
xor $39011, %r11

// Store
lea addresses_US+0xf849, %r11
nop
nop
nop
nop
add %r10, %r10
mov $0x5152535455565758, %r12
movq %r12, %xmm4
vmovups %ymm4, (%r11)
nop
nop
nop
nop
and %r11, %r11

// Faulty Load
lea addresses_D+0x14f87, %rdx
nop
nop
nop
nop
nop
and %r9, %r9
mov (%rdx), %esi
lea oracles, %r11
and $0xff, %rsi
shlq $12, %rsi
mov (%r11,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rbx
pop %r9
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 7, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'36': 30}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
