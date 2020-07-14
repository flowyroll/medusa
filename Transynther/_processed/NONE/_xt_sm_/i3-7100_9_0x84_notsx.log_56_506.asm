.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rbx
lea addresses_UC_ht+0x1e3a1, %r12
nop
sub %r15, %r15
movb $0x61, (%r12)
xor $42716, %rbx
pop %rbx
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rax
push %rcx
push %rdi
push %rsi

// Store
mov $0xbec6800000000ad, %rsi
nop
nop
nop
add $45116, %rdi
movb $0x51, (%rsi)
nop
nop
nop
dec %rax

// Store
lea addresses_D+0x1ca1d, %r10
nop
nop
nop
xor $55272, %r11
movb $0x51, (%r10)
nop
nop
nop
nop
nop
add %r11, %r11

// Load
lea addresses_A+0x1b71d, %r12
clflush (%r12)
nop
dec %rcx
movb (%r12), %r11b
nop
nop
and $58855, %rsi

// Store
lea addresses_D+0x1ca1d, %rcx
cmp $20280, %rax
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%rcx)
nop
nop
nop
add $13910, %r11

// Faulty Load
lea addresses_D+0x1ca1d, %rsi
nop
nop
nop
inc %r11
mov (%rsi), %r12
lea oracles, %r10
and $0xff, %r12
shlq $12, %r12
mov (%r10,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'58': 56}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
