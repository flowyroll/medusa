.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x147d1, %rsi
lea addresses_WT_ht+0x1ee11, %rdi
nop
nop
nop
nop
add %rbx, %rbx
mov $116, %rcx
rep movsw
add %rbx, %rbx
lea addresses_normal_ht+0xa8cd, %r8
and $12478, %r12
movb (%r8), %r11b
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_normal_ht+0x16fb1, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
cmp $46425, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%rcx)
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x11a71, %rcx
nop
nop
nop
add $62213, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm5
and $0xffffffffffffffc0, %rcx
vmovaps %ymm5, (%rcx)
nop
nop
dec %r11
lea addresses_UC_ht+0xa22b, %r8
nop
nop
and $51188, %rdi
movups (%r8), %xmm6
vpextrq $0, %xmm6, %r11
nop
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x1cb1, %rbx
nop
nop
nop
nop
sub $20872, %r11
mov (%rbx), %cx
nop
nop
nop
xor %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r9
push %rbp
push %rbx
push %rdi

// Faulty Load
lea addresses_WC+0x69f1, %r9
nop
nop
nop
nop
add $54279, %r14
vmovups (%r9), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbx
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': True, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'47': 5583, '00': 16246}
47 00 47 00 00 00 47 00 00 00 00 47 00 00 00 47 00 00 00 47 00 00 00 00 00 00 47 00 00 00 00 47 00 00 00 47 00 00 00 00 00 00 00 47 00 00 47 00 00 00 47 00 00 47 00 00 00 00 00 47 00 00 00 47 00 00 00 00 47 00 00 00 47 00 47 00 00 00 00 47 00 00 00 47 00 00 00 00 47 00 00 47 00 00 00 47 00 00 00 47 00 00 00 00 47 00 00 47 00 00 00 47 00 00 00 47 00 00 00 47 00 00 00 00 00 00 47 00 00 00 00 47 00 00 00 00 00 47 00 00 00 00 47 00 00 47 00 00 47 00 00 00 00 47 00 00 00 47 00 00 00 00 47 00 00 00 47 00 00 00 47 00 00 00 00 47 00 00 00 47 47 00 00 00 00 47 00 00 00 47 00 00 00 00 00 00 47 00 00 00 47 00 00 00 00 47 00 00 00 47 00 00 47 00 00 00 47 00 00 00 00 47 00 00 47 00 00 47 00 00 00 00 47 00 00 00 47 00 00 00 47 00 00 00 00 47 00 00 00 00 47 00 00 00 47 00 00 47 00 00 00 47 00 00 00 00 47 00 00 00 47 00 00 47 00 00 00 47 00 00 00 47 00 00 00 00 47 00 00 47 00 00 00 47 00 00 00 00 47 00 00 00 47 00 00 47 00 00 47 00 00 47 00 00 00 47 00 00 47 00 47 00 00 00 47 00 00 00 00 00 00 47 00 00 00 47 00 00 00 47 00 00 00 00 00 00 47 00 00 00 00 47 00 00 00 47 00 00 47 00 00 00 47 00 00 00 47 00 00 00 00 00 00 47 00 47 00 00 00 47 00 00 47 00 00 00 47 00 47 00 00 00 00 47 00 00 00 47 00 00 00 47 00 00 47 00 00 00 47 00 00 00 47 00 47 00 00 47 00 00 00 47 00 00 00 00 47 00 47 00 00 00 47 00 00 00 47 00 00 47 00 00 00 47 00 00 00 47 00 00 00 47 00 00 47 00 00 00 47 00 00 00 47 00 00 00 00 47 00 00 00 47 00 00 00 00 47 00 00 47 00 00 00 00 00 47 00 47 00 00 00 47 00 00 00 00 47 00 00 47 00 00 47 00 00 00 00 00 00 00 00 00 00 00 47 00 47 00 47 00 00 47 00 47 00 00 00 47 47 00 00 00 47 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 47 00 00 00 47 47 00 00 00 47 00 47 00 00 47 00 47 00 00 00 47 00 00 00 00 47 00 00 00 00 47 00 00 00 47 00 00 47 00 00 00 47 00 00 47 00 00 00 00 00 47 47 00 00 00 00 47 00 47 00 00 47 00 00 00 00 47 00 00 00 00 00 47 00 00 00 00 00 00 47 00 00 00 00 47 00 00 00 00 00 00 47 00 00 00 47 00 00 47 00 00 00 00 00 47 00 00 00 00 47 00 00 00 47 00 00 00 47 00 00 00 00 47 00 47 00 00 00 47 00 47 00 00 00 00 00 00 47 00 00 00 00 00 00 47 00 00 00 47 00 00 00 00 47 00 47 00 00 00 47 00 00 47 00 00 00 47 00 00 47 00 00 00 47 00 00 00 47 00 00 00 00 00 47 00 00 47 00 00 00 00 47 00 00 00 47 00 47 00 00 47 00 47 00 00 00 00 00 00 47 00 00 00 00 47 00 00 47 00 00 00 00 00 00 00 00 47 00 00 00 47 00 00 00 00 47 00 00 00 47 00 00 47 00 00 00 47 00 00 00 00 47 00 00 00 47 00 47 00 00 47 00 00 00 47 00 00 47 00 00 00 47 00 47 00 00 00 47 47 00 00 00 47 00 00 47 00 00 00 47 00 00 00 47 00 00 47 00 00 00 47 00 00 00 47 00 00 00 00 47 00 00 00 47 00 00 00 00 47 00 00 47 00 00 47 00 00 00 00 47 00 00 00 00 47 00 00 47 00 00 47 00 47 00 00 00 00 47 00 00 00 47 00 00 00 47 00 00 00 00 00 00 47 00 00 00 47 00 00 00 00 47 00 00 47 00 00 00 47 00 00 00 47 00 00 00 47 00 00 00 00 47 00 00 00 47 00 00 00 00 00 47 00 00 47 00 00 00 47 00 00 00 00 00 00 47 00 00 00 47 00 00 47 00 00 00 47 00 00 00 00 47 00 00 47 00 00 47 00 00 00 47 00 00 00 00 47 00 00 00
*/
