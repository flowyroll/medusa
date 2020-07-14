.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1d37f, %rax
nop
nop
nop
inc %r13
mov (%rax), %r15
nop
nop
nop
and $32329, %r14
lea addresses_WC_ht+0x1d525, %r12
nop
nop
nop
add %rdi, %rdi
vmovups (%r12), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r14
nop
nop
sub $47781, %r14
lea addresses_D_ht+0xf023, %rsi
lea addresses_WT_ht+0x18a48, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
sub %r15, %r15
mov $115, %rcx
rep movsq
nop
xor %rsi, %rsi
lea addresses_D_ht+0xb4d4, %r12
sub %rax, %rax
mov $0x6162636465666768, %r15
movq %r15, %xmm7
movups %xmm7, (%r12)
cmp $28475, %r15
lea addresses_WT_ht+0x13baf, %r13
nop
nop
nop
nop
sub $14425, %rcx
movl $0x61626364, (%r13)
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x384f, %rcx
nop
nop
nop
nop
nop
sub $38692, %r15
mov $0x6162636465666768, %rax
movq %rax, %xmm6
movups %xmm6, (%rcx)
inc %r12
lea addresses_D_ht+0x9daf, %rax
nop
nop
nop
sub $15681, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%rax)
nop
nop
cmp $48473, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %r9
push %rbp
push %rdi
push %rdx

// Store
lea addresses_UC+0xd3e7, %rdi
nop
nop
nop
nop
nop
cmp $22270, %r11
movb $0x51, (%rdi)
nop
nop
nop
nop
nop
cmp $43569, %r9

// Store
mov $0xcb1f40000000dc7, %r9
xor %rdx, %rdx
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
inc %r12

// Store
lea addresses_US+0x70af, %rbp
nop
nop
nop
nop
nop
cmp %r9, %r9
movw $0x5152, (%rbp)
nop
nop
nop
nop
cmp $18241, %r9

// Faulty Load
mov $0x1c8c7a00000001af, %r9
nop
nop
nop
nop
dec %r8
vmovups (%r9), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r12
lea oracles, %rdi
and $0xff, %r12
shlq $12, %r12
mov (%rdi,%r12,1), %r12
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': True, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'48': 7123, '00': 5, '46': 14701}
00 46 48 46 46 46 48 46 46 48 48 46 48 48 48 48 48 48 46 48 48 46 48 46 46 46 46 46 46 46 46 46 46 46 46 48 48 48 46 46 48 48 46 48 48 46 46 48 46 46 46 46 46 46 48 48 46 46 48 46 48 46 46 48 48 48 48 48 46 46 48 48 46 48 48 48 46 46 46 46 48 46 46 46 46 48 48 48 46 46 46 48 48 48 46 46 46 46 46 48 48 48 46 46 46 46 46 46 46 46 46 48 46 48 46 46 46 46 48 46 46 48 48 48 46 46 46 48 46 46 48 46 46 46 46 46 48 46 46 46 46 46 48 46 48 46 48 48 48 48 48 48 46 48 48 46 48 46 46 46 48 46 46 46 46 46 48 46 48 46 46 48 48 48 48 48 46 46 46 46 46 46 48 46 46 48 46 48 46 46 46 48 46 46 46 46 46 46 46 46 46 46 46 46 46 48 48 48 46 46 46 46 46 46 48 46 46 46 46 48 48 48 48 48 46 48 48 46 46 46 46 48 46 46 48 46 48 48 46 46 46 48 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 48 48 48 46 46 46 48 46 46 46 48 48 46 46 46 48 46 48 46 48 48 48 46 46 46 46 46 46 46 46 46 46 48 46 48 48 46 46 46 48 46 46 46 48 46 46 46 46 46 46 46 46 46 48 46 46 46 46 48 48 48 48 46 46 46 48 46 48 48 46 46 46 46 46 48 46 46 46 48 46 46 46 46 48 46 48 48 46 46 46 46 48 46 46 46 48 48 48 48 48 48 46 48 46 46 46 46 48 46 48 48 46 48 46 46 46 48 46 48 46 48 48 46 48 46 46 46 46 46 48 48 46 48 48 46 48 48 46 48 46 48 46 46 46 48 46 48 46 48 46 48 48 46 48 46 48 46 46 46 46 48 46 46 46 46 48 46 48 48 48 48 48 46 46 46 46 46 46 46 46 46 46 46 48 46 46 48 46 48 46 46 46 46 46 46 46 46 46 48 46 46 48 46 48 46 46 48 46 46 46 48 46 48 46 48 46 46 46 46 46 46 48 46 46 46 48 46 46 46 48 46 48 48 46 48 46 48 46 46 46 46 48 46 48 46 46 48 48 46 46 46 46 46 46 48 46 46 46 46 48 48 48 46 46 48 48 46 46 46 46 46 48 48 46 46 46 46 46 46 48 48 46 48 46 46 48 46 46 46 48 48 48 48 48 46 46 46 46 48 48 46 46 46 48 46 46 46 48 48 46 48 48 46 46 46 46 46 48 46 46 48 46 48 48 46 46 46 46 46 46 46 48 46 46 46 46 48 48 46 46 46 46 46 46 48 48 48 46 46 48 46 46 48 48 48 46 48 46 48 46 48 48 46 46 48 48 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 48 46 48 46 48 46 48 46 46 46 48 46 46 48 46 46 46 48 48 46 46 46 46 46 46 46 48 46 48 48 48 46 46 48 46 46 46 46 48 48 46 48 46 46 46 48 46 46 46 48 48 46 46 48 46 46 46 46 46 46 46 46 46 48 46 48 48 46 46 46 48 46 46 46 48 46 46 46 46 46 46 46 48 46 46 48 46 46 48 48 48 46 48 48 48 48 46 46 46 46 48 48 46 46 46 46 46 48 48 48 46 46 48 46 46 48 48 48 48 46 48 46 46 46 46 46 46 48 48 46 48 48 46 46 46 46 46 46 48 48 48 48 46 46 48 46 46 46 46 46 48 46 48 46 46 48 48 46 46 46 48 46 48 48 46 48 48 46 48 48 48 46 46 46 46 48 48 48 48 46 46 48 46 46 48 46 48 46 46 46 46 46 46 46 48 48 48 46 46 46 46 48 46 46 46 46 46 46 46 48 46 46 46 48 46 46 46 46 46 46 46 46 46 46 48 46 46 48 48 48 48 46 48 46 48 48 48 46 46 46 46 46 48 46 46 46 48 46 48 48 46 48 46 46 46 46 46 46 48 46 46 48 46 46 46 46 46 46 46 48 46 48 46 46 46 48 46 48 48 46 46 48 48 46 46 46 46 46 48 46 46 48 46 46 46 48 46 48 46 46 46 48 46 46 48 46 48 46 48 46 46 46 46 48 48 48 48 48 48 48 46 46 46 48 46 46 46 46 46 46 46 48 46 48 46 46 48 46 48 46 48 48 48 48 46 46 46 46 46 46 46 46 46 46 46 48 48 46 46 46 46
*/
