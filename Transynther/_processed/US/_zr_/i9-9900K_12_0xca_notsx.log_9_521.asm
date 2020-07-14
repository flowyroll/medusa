.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1e4d3, %rsi
lea addresses_WT_ht+0x1677e, %rdi
nop
nop
nop
nop
dec %r8
mov $37, %rcx
rep movsl
sub $45704, %r10
lea addresses_D_ht+0xea1a, %r10
clflush (%r10)
nop
and %rbp, %rbp
movb $0x61, (%r10)
nop
add %rdi, %rdi
lea addresses_WC_ht+0x1c17e, %rsi
lea addresses_WT_ht+0x18b7e, %rdi
sub %r11, %r11
mov $85, %rcx
rep movsq
cmp %rcx, %rcx
lea addresses_A_ht+0x1807e, %rcx
nop
nop
nop
nop
nop
xor %rsi, %rsi
movb (%rcx), %r8b
nop
nop
nop
cmp $54865, %rbp
lea addresses_WC_ht+0x113ce, %r10
clflush (%r10)
nop
nop
nop
nop
nop
sub $55516, %r11
mov (%r10), %esi
nop
nop
and $22619, %rcx
lea addresses_normal_ht+0x105be, %rsi
lea addresses_UC_ht+0x1147e, %rdi
nop
nop
xor $5070, %r8
mov $5, %rcx
rep movsq
nop
nop
nop
dec %r11
lea addresses_WT_ht+0xa77e, %rsi
lea addresses_UC_ht+0xb59e, %rdi
and $53813, %r12
mov $2, %rcx
rep movsq
nop
and $22572, %r8
lea addresses_WT_ht+0x355e, %rsi
lea addresses_D_ht+0x80fe, %rdi
nop
nop
and %r11, %r11
mov $101, %rcx
rep movsw
sub $20729, %r10
lea addresses_D_ht+0xa01e, %rsi
lea addresses_UC_ht+0x617e, %rdi
sub $48534, %rbp
mov $14, %rcx
rep movsb
nop
nop
nop
xor %rbp, %rbp
lea addresses_WC_ht+0x8cfe, %rbp
nop
nop
nop
and $60504, %r12
mov (%rbp), %di
add %rdi, %rdi
lea addresses_WC_ht+0x1ae4a, %rsi
lea addresses_WT_ht+0x1cb7e, %rdi
nop
nop
nop
nop
and %rbp, %rbp
mov $88, %rcx
rep movsq
nop
nop
nop
sub $47517, %rbp
lea addresses_UC_ht+0x199de, %r8
nop
nop
nop
nop
cmp %r12, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
movups %xmm5, (%r8)
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x19f7e, %rsi
lea addresses_WT_ht+0xe1de, %rdi
nop
nop
xor $29085, %r10
mov $88, %rcx
rep movsb
nop
nop
nop
nop
nop
and $9696, %r8
lea addresses_UC_ht+0xe77e, %r11
nop
nop
nop
sub $27798, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%r11)
nop
nop
nop
nop
nop
and $19094, %rdi
lea addresses_UC_ht+0x507e, %rsi
lea addresses_normal_ht+0x1b77e, %rdi
nop
nop
nop
nop
nop
lfence
mov $104, %rcx
rep movsb
nop
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %r9
push %rcx

// Faulty Load
lea addresses_US+0xa77e, %r9
nop
nop
nop
nop
xor $3690, %r8
movb (%r9), %cl
lea oracles, %r15
and $0xff, %rcx
shlq $12, %rcx
mov (%r15,%rcx,1), %rcx
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'00': 9}
00 00 00 00 00 00 00 00 00
*/
