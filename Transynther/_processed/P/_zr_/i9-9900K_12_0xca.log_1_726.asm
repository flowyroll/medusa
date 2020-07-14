.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rbp
push %rcx
push %rsi
lea addresses_WT_ht+0xecfb, %r11
nop
nop
nop
nop
and $21778, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%r11)
nop
nop
nop
nop
nop
add $9903, %r10
lea addresses_A_ht+0xc717, %rbp
inc %r10
mov (%rbp), %rcx
add %rcx, %rcx
pop %rsi
pop %rcx
pop %rbp
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rax
push %rdi
push %rdx

// Faulty Load
mov $0x2bf, %rax
nop
nop
xor %r11, %r11
mov (%rax), %edx
lea oracles, %r9
and $0xff, %rdx
shlq $12, %rdx
mov (%r9,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_P', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'00': 1}
00
*/
