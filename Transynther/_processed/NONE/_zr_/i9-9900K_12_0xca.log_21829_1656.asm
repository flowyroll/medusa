.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xaca6, %r13
nop
add $55594, %r9
movw $0x6162, (%r13)
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_UC_ht+0x914, %rsi
lea addresses_WT_ht+0x9da4, %rdi
nop
sub %r9, %r9
mov $7, %rcx
rep movsl
nop
nop
nop
nop
add %r13, %r13
lea addresses_WC_ht+0xaf14, %rcx
nop
nop
nop
nop
nop
and %r9, %r9
movb (%rcx), %al
inc %rcx
lea addresses_A_ht+0x15d54, %rsi
clflush (%rsi)
sub $34040, %rcx
movw $0x6162, (%rsi)
nop
nop
nop
nop
inc %rsi
lea addresses_D_ht+0x180ac, %rsi
lea addresses_UC_ht+0x7314, %rdi
nop
nop
nop
sub $26627, %r12
mov $114, %rcx
rep movsl
nop
nop
sub $11693, %r9
lea addresses_A_ht+0xee14, %rsi
lea addresses_A_ht+0xbad6, %rdi
nop
nop
nop
nop
nop
sub %r13, %r13
mov $114, %rcx
rep movsb
nop
sub $41080, %r12
lea addresses_WT_ht+0x3678, %r9
nop
nop
nop
nop
nop
add %rsi, %rsi
mov (%r9), %rdx
nop
nop
nop
and $24669, %r12
lea addresses_D_ht+0x5b14, %rsi
lea addresses_A_ht+0x1b784, %rdi
clflush (%rdi)
nop
nop
add $22170, %rdx
mov $87, %rcx
rep movsq
nop
and %rax, %rax
lea addresses_normal_ht+0x12714, %r9
nop
nop
nop
cmp $19696, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%r9)
nop
nop
nop
nop
nop
add $64410, %r13
lea addresses_D_ht+0xbe1c, %rcx
add %rax, %rax
mov (%rcx), %r9w
nop
nop
cmp $20979, %r13
lea addresses_A_ht+0x11114, %rsi
lea addresses_WT_ht+0x16814, %rdi
clflush (%rsi)
nop
add $48638, %r9
mov $87, %rcx
rep movsq
cmp %r9, %r9
lea addresses_WT_ht+0x16a94, %rsi
xor %r12, %r12
mov $0x6162636465666768, %r9
movq %r9, (%rsi)
nop
nop
nop
nop
and $27501, %r12
lea addresses_UC_ht+0x1c29a, %rsi
nop
xor $14283, %rdx
movb $0x61, (%rsi)
nop
sub %rdi, %rdi
lea addresses_A_ht+0x14214, %rsi
lea addresses_WT_ht+0xfc24, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
dec %r13
mov $16, %rcx
rep movsw
nop
nop
nop
nop
nop
and $17176, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %rcx
push %rdi
push %rdx

// Faulty Load
lea addresses_A+0x5f14, %rcx
clflush (%rcx)
cmp $59954, %r12
mov (%rcx), %r15w
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 6}, 'dst': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': True, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
