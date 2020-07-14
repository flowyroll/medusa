.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x15934, %rsi
lea addresses_UC_ht+0x148f4, %rdi
nop
nop
sub $17294, %r9
mov $37, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $32785, %r10
lea addresses_WT_ht+0x7774, %rbp
nop
nop
and %r14, %r14
movw $0x6162, (%rbp)
nop
nop
cmp $60332, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rsi

// Store
mov $0x6175f80000000774, %rcx
nop
add %rbp, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, (%rcx)
nop
nop
nop
nop
xor %r9, %r9

// Store
lea addresses_WC+0x19374, %rbx
add %r10, %r10
movb $0x51, (%rbx)
xor %r10, %r10

// Faulty Load
mov $0x6175f80000000774, %r8
xor %rcx, %rcx
mov (%r8), %rbp
lea oracles, %r9
and $0xff, %rbp
shlq $12, %rbp
mov (%r9,%rbp,1), %rbp
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'58': 98, '00': 85, '7e': 1, '9a': 1, '4a': 1, 'c8': 2, 'f4': 1, 'f0': 1, '54': 1, 'b4': 1, '0e': 1, '7c': 1, 'e0': 4, 'c4': 1, 'f6': 2, '8c': 2, 'ea': 1, 'd8': 1, 'fe': 1, 'e4': 1, '3e': 1, 'fc': 1, '34': 1, 'f2': 1, '92': 1, '60': 1, '40': 1, '26': 1}
58 58 58 00 58 58 58 58 58 7e 58 58 9a 00 58 00 58 58 00 58 00 58 58 58 4a 58 00 58 58 58 c8 58 58 58 58 f4 58 f0 58 00 00 00 54 58 58 b4 00 58 00 0e 00 58 7c 00 58 00 00 58 e0 58 58 58 58 c4 f6 58 8c 58 00 58 58 58 00 00 00 58 58 58 58 00 00 00 58 00 ea 58 00 00 00 58 00 58 d8 00 00 fe 00 00 00 58 58 58 00 00 00 58 00 00 58 00 00 c8 e4 58 00 58 58 58 00 58 00 58 e0 58 00 f6 00 00 00 58 58 58 58 00 00 58 58 00 00 00 00 58 58 00 58 58 00 00 00 3e 58 58 00 00 00 fc 58 34 58 58 58 f2 00 00 8c 58 58 00 00 00 58 00 58 58 58 58 92 00 00 00 58 58 58 58 00 00 e0 00 00 00 60 00 58 00 00 58 58 00 00 58 e0 58 58 00 58 58 58 40 00 00 00 00 26 00 00
*/
