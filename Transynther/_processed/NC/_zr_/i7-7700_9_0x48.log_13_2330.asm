.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %rbx
push %rcx
push %rdi
lea addresses_WT_ht+0x1a6b2, %rcx
nop
nop
nop
nop
inc %r12
mov (%rcx), %ebx
nop
nop
add %rdi, %rdi
pop %rdi
pop %rcx
pop %rbx
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %r8
push %rcx
push %rsi

// Store
lea addresses_D+0x1e2b2, %r11
clflush (%r11)
nop
nop
nop
and $46112, %rcx
mov $0x5152535455565758, %r10
movq %r10, %xmm2
vmovups %ymm2, (%r11)
nop
and $39936, %r10

// Load
lea addresses_D+0x1a536, %r10
cmp %rsi, %rsi
mov (%r10), %r8d
nop
nop
nop
sub %r15, %r15

// Faulty Load
mov $0x353bd60000000eb2, %rsi
nop
nop
nop
nop
nop
sub $36093, %r13
mov (%rsi), %r15d
lea oracles, %r11
and $0xff, %r15
shlq $12, %r15
mov (%r11,%r15,1), %r15
pop %rsi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'00': 13}
00 00 00 00 00 00 00 00 00 00 00 00 00
*/
