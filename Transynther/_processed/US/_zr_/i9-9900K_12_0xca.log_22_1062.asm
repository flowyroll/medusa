.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
lea addresses_WT_ht+0x14efd, %rbx
nop
nop
sub $7291, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, (%rbx)
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x8ffd, %rcx
nop
cmp %r8, %r8
movb $0x61, (%rcx)
nop
nop
nop
xor %rdx, %rdx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rcx
push %rsi

// Store
mov $0x19d, %r9
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm6
vmovaps %ymm6, (%r9)
nop
nop
nop
xor %r14, %r14

// Faulty Load
lea addresses_US+0x2bfd, %rcx
clflush (%rcx)
nop
and $61848, %r15
mov (%rcx), %r11d
lea oracles, %r9
and $0xff, %r11
shlq $12, %r11
mov (%r9,%r11,1), %r11
pop %rsi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': True, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'00': 22}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
