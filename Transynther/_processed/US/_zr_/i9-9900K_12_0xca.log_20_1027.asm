.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rbx
push %rcx
lea addresses_A_ht+0x120a5, %rcx
inc %rbx
movb $0x61, (%rcx)
cmp %rcx, %rcx
lea addresses_WT_ht+0x1339a, %rbx
add $45881, %r13
mov $0x6162636465666768, %r11
movq %r11, (%rbx)
and $24775, %r11
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rdi
push %rdx
push %rsi

// Faulty Load
lea addresses_US+0x1779a, %rsi
nop
nop
nop
xor $64112, %r12
vmovups (%rsi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r11
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'00': 20}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
