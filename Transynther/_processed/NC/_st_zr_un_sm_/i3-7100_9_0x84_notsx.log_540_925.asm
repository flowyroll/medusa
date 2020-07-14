.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rax
push %rbx
push %rcx
push %rsi

// Store
mov $0x18d504000000033d, %r8
nop
nop
nop
nop
nop
and $52478, %rax
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
movups %xmm4, (%r8)
cmp $47409, %rax

// Store
mov $0x18d504000000033d, %rcx
nop
cmp $43597, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, (%rcx)
sub $62180, %r8

// Store
lea addresses_D+0x803d, %rbx
add %r12, %r12
mov $0x5152535455565758, %r8
movq %r8, %xmm4
movups %xmm4, (%rbx)
nop
nop
sub $1825, %rcx

// Faulty Load
mov $0x18d504000000033d, %r8
add %rcx, %rcx
mov (%r8), %rbx
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 9, '58': 479, '6d': 52}
58 58 58 58 58 58 58 00 58 58 6d 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 00 58 6d 58 58 58 58 58 58 58 58 58 00 58 6d 58 58 6d 58 58 6d 58 58 00 58 58 58 6d 6d 58 58 58 6d 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 6d 58 58 58 58 58 58 58 6d 58 58 58 6d 58 58 58 6d 58 58 58 58 58 58 58 58 6d 6d 58 58 58 58 58 58 58 58 58 58 6d 58 6d 6d 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 6d 58 58 6d 6d 58 58 58 58 58 58 58 58 58 58 6d 58 58 6d 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 6d 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 6d 58 58 58 58 58 58 58 58 58 6d 6d 58 58 6d 6d 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 6d 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 6d 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58
*/
