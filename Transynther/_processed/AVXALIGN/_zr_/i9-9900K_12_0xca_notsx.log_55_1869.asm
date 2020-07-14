.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %rbp
push %rdi
push %rdx
lea addresses_WT_ht+0x1074c, %rdi
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov (%rdi), %rbp
add $38922, %r12
pop %rdx
pop %rdi
pop %rbp
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r9
push %rax
push %rdi
push %rdx

// Load
mov $0xe06, %rax
nop
sub $47358, %r11
mov (%rax), %r10
nop
nop
nop
nop
and $7573, %r10

// Load
lea addresses_WT+0x15f42, %r11
nop
nop
nop
nop
cmp $18913, %r9
mov (%r11), %di
nop
nop
nop
nop
nop
xor %r9, %r9

// Store
mov $0xc12, %r9
clflush (%r9)
nop
nop
nop
nop
inc %rdx
mov $0x5152535455565758, %r10
movq %r10, %xmm5
vmovups %ymm5, (%r9)
and %rdi, %rdi

// Faulty Load
lea addresses_WC+0x1fc42, %r12
nop
nop
nop
nop
nop
add %rdi, %rdi
movntdqa (%r12), %xmm2
vpextrq $0, %xmm2, %r9
lea oracles, %rax
and $0xff, %r9
shlq $12, %r9
mov (%rax,%r9,1), %r9
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'00': 55}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
