.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xa6f4, %rsi
lea addresses_D_ht+0x1a35e, %rdi
clflush (%rdi)
nop
nop
nop
dec %r8
mov $104, %rcx
rep movsq
nop
add %r9, %r9
lea addresses_WT_ht+0x1417c, %rax
nop
nop
nop
nop
nop
xor %r14, %r14
mov (%rax), %edi
nop
cmp %r8, %r8
lea addresses_A_ht+0x1007c, %r14
dec %r9
vmovups (%r14), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rsi
sub $31119, %rsi
lea addresses_WT_ht+0xdd7c, %rsi
nop
nop
nop
nop
nop
xor $44917, %rdi
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
sub $781, %rcx
lea addresses_A_ht+0x1b27c, %rsi
nop
nop
cmp $59840, %rdi
mov $0x6162636465666768, %rax
movq %rax, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
nop
cmp $36596, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rax
push %rbx

// Faulty Load
lea addresses_US+0x5d7c, %rax
nop
cmp $22262, %r8
movups (%rax), %xmm5
vpextrq $0, %xmm5, %r11
lea oracles, %r8
and $0xff, %r11
shlq $12, %r11
mov (%r8,%r11,1), %r11
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'3c': 277, '20': 1, '80': 24, '01': 319, '79': 167, '86': 22, 'd4': 1, '00': 83, '70': 1, '53': 731, '30': 32, '49': 1770, 'ad': 563, 'c0': 141, 'ff': 9369, '2c': 1, '45': 8314, '88': 1, 'be': 1, '78': 1, '60': 1, '10': 1, '28': 1, 'e0': 7}
45 45 ff ad ff ff 01 53 53 45 45 ff 45 49 45 ff 45 45 45 ff ff ff 45 45 49 ff ff 49 45 ff 45 ff ff 49 ff 45 45 45 ff ff ff ff ff 45 ff 45 45 45 ff ff 45 49 ff ff 45 45 49 ff ff 49 ff ff 45 45 ff ff 45 ff 3c ff 45 49 ff ff 45 45 45 45 45 45 ff 45 ad 49 ff 86 45 ff ff 45 ad 45 49 ff 53 45 45 ff ff ff 49 ff 45 45 ff 53 ff 45 45 ff c0 ff 45 45 53 ff ff ff 45 45 45 45 53 ff ff ff 45 ff 45 45 45 ff ff 3c ff 3c ff 45 ff 45 45 45 45 45 45 ff ff 45 ad 49 45 45 ff ff ff 45 45 49 ff 45 ff ff 45 ff ff ff ff 45 ff ff 45 ff ff 01 45 45 49 ff 45 ff 01 45 45 45 ff 45 45 49 45 ff ff 45 ff 45 45 45 45 45 ff 45 ff 49 45 ff ff 45 45 45 ff 49 ff 49 45 ff ff ff 53 ff 45 ff 45 53 ff 45 ff ff 45 ff ff 45 ff 45 45 45 ff 45 ff 53 ff ff 45 ff ff ff ff 01 45 45 ff ff ad ff ad 49 ff 45 ff 45 ff 45 53 45 45 45 ff 49 45 45 45 49 45 ff ff ff 45 45 ff 45 45 45 ff 45 ff ff 45 45 ff 45 3c 53 ff 49 49 45 ff ff 45 ff 45 ff 53 ff ff 45 3c ff ff 45 53 45 45 49 45 ff ff ff ff ff 45 45 45 ff ff 53 ff 53 c0 53 45 ff ff ff ff 45 ff 45 45 ff ff ff 01 45 ff 49 45 45 53 45 45 45 45 45 ff ad 45 45 ff 45 49 45 49 ff 45 45 45 ff ff ff 45 ff 45 3c ff ff 45 45 45 53 ff ff 49 ff ff ff 45 ff 45 ff ff 49 ff 01 ff 01 45 49 45 00 45 ff ff 53 45 ff ff 45 45 45 ff ff ff ad 3c 45 ff ff ff 53 ff ff ff 45 ff 01 ff 01 ff 45 ff 01 3c ff 45 45 45 45 ff 45 ff 45 ff ff ff 45 ff ad ff 45 ff 45 ff ff 45 45 ff 79 ff ff ff ff 45 49 45 ff 49 45 45 ff 45 ff ad ff 45 ff 49 3c ff ff 45 45 45 45 ff 53 ff 45 ff ff 45 45 45 ff 49 45 ff ff ff ff 45 53 45 ad 45 45 45 ff ff 45 ff 45 ff 45 45 45 ff 45 ad 45 45 ff 45 45 45 ff 45 ff 45 45 49 3c ff 45 ad 45 ff ff 53 ff ff 45 ff 45 ff 45 45 ff ff ff ff 01 45 45 45 45 49 ff 45 45 45 45 ff 45 45 ff ad 49 ff 49 45 49 45 ff ff ff 45 ff ff 45 45 45 ad 45 45 49 ff 49 ff 53 49 45 49 ff 45 45 ff 49 45 45 49 49 53 c0 49 ff ff ff 45 ff ff ff 01 80 ff 3c ff ff ff ff 49 45 ff 53 ff 45 ff 45 3c ff ff 45 ff 45 45 45 45 ff ff 53 53 45 3c ff 45 45 45 45 ff 49 45 ff ff 45 45 ff 45 45 ff 45 45 ff ff ff 45 ad ff 45 ff ff ff ff 45 ff 45 ff 45 45 ff 79 ff ff 45 45 45 ff ad 45 45 ff ff 45 ff 45 ff 49 ff 45 ff 45 45 45 45 ff 45 45 45 45 ff 45 45 ff 45 53 49 45 53 ff ff 45 45 ff 45 45 45 49 ff ff 45 45 ff 45 ff ff ff 45 ff 45 ff ad ff ff 45 ff 45 45 ff 3c 45 ff 45 45 49 ff 49 ff 45 45 53 ff 49 45 45 45 ff 45 c0 ff 45 45 ff 45 53 45 45 45 ff 53 ad ff ad ff 45 45 ff ff 49 ff ff ff 45 45 ff ff ff 45 ff 45 45 ff 45 ff 45 45 45 45 ff 45 ad ff ff ff 45 45 45 ff 45 45 49 ff ff ff ff ff ff ff ff ff 01 45 45 ff 49 ff ff 01 ff 01 ff 49 ff ff ff ff ff 45 ff 45 45 ff 45 ff 53 45 45 45 45 ff 45 ff ff 3c 45 49 ff ff 3c 45 45 ff 45 ff 45 ff 45 45 ff ff 45 45 ff ad ff 49 ff 53 ff ad 49 45 45 ff ff ad 00 45 ff ff 49 ff ff 45 45 ff ff 49 45 45 53 ff 45 ff ff 45 78 ff 45 ff 45 ff ff ff ff 01 45 45 45 ff ff 45 45 ff 79 45 45 45 45 ff 45 ff ff ad ff ff ff ff 45 ff 45 ff 45 ff 01 45 ff ff 01 45 ff ff ff 01 45 ff 45 45 ff 45 3c ff ff ad ff 45 49 45 45 45 ff ff ff ff 49 45 45 ff 53 45 ff ff ff 45 49 ff ff 45 ff ff 45 ad 45 ff
*/
