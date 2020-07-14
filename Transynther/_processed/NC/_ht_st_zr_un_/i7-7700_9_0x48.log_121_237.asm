.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rcx
lea addresses_normal_ht+0x104ac, %r11
clflush (%r11)
nop
nop
nop
sub %r8, %r8
mov (%r11), %r14
nop
nop
cmp %rcx, %rcx
pop %rcx
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rax
push %rbp
push %rdx

// Store
lea addresses_UC+0x64ac, %r11
nop
nop
nop
nop
nop
inc %r9
mov $0x5152535455565758, %rax
movq %rax, %xmm4
movups %xmm4, (%r11)
nop
nop
cmp $62114, %r13

// Faulty Load
mov $0x676ef80000000cac, %r10
nop
add %rbp, %rbp
vmovups (%r10), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r9
lea oracles, %rbp
and $0xff, %r9
shlq $12, %r9
mov (%rbp,%r9,1), %r9
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'89': 1, 'f3': 11, 'a3': 7, 'd0': 7, '41': 2, '03': 7, '7b': 9, 'd8': 1, 'f8': 1, '2c': 1, '84': 5, 'd4': 16, '87': 36, '00': 5, '38': 1, 'd9': 7, 'c9': 4}
03 03 03 03 03 03 03 2c 84 84 84 84 84 87 87 a3 a3 a3 a3 a3 a3 a3 c9 c9 c9 c9 00 00 00 00 00 87 87 87 87 87 87 87 87 87 87 87 87 87 87 f8 41 41 f3 f3 f3 f3 f3 f3 f3 f3 f3 f3 f3 87 87 87 87 87 87 87 87 87 87 87 87 87 87 87 d4 d4 d4 d4 d4 d4 d4 d4 d4 d4 d4 d4 d4 d4 d4 d4 38 d8 d0 d0 d0 d0 d0 d0 d0 87 87 87 d9 d9 d9 d9 d9 d9 d9 7b 7b 7b 87 7b 7b 7b 7b 7b 7b 87 89
*/
