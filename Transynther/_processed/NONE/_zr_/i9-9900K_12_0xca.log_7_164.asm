.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %r9
lea addresses_WC_ht+0x16227, %r9
nop
nop
nop
nop
nop
xor %r12, %r12
movb $0x61, (%r9)
nop
nop
nop
and $57336, %r8
pop %r9
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %rbp
push %rbx
push %rcx
push %rsi

// Store
lea addresses_A+0x80e3, %rsi
nop
nop
nop
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
movups %xmm5, (%rsi)
nop
nop
nop
nop
cmp $7016, %rcx

// Store
lea addresses_normal+0xef4f, %rcx
nop
nop
nop
nop
nop
dec %r11
movw $0x5152, (%rcx)
nop
and $15675, %rbx

// Store
lea addresses_PSE+0x1a1ff, %rsi
xor %r10, %r10
movl $0x51525354, (%rsi)
nop
xor %rcx, %rcx

// Faulty Load
lea addresses_A+0xc7e3, %rsi
cmp $100, %rbx
vmovups (%rsi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r11
lea oracles, %rsi
and $0xff, %r11
shlq $12, %r11
mov (%rsi,%r11,1), %r11
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'00': 7}
00 00 00 00 00 00 00
*/
