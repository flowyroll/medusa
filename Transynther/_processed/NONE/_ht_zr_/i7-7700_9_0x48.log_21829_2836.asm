.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x11dbb, %rsi
lea addresses_normal_ht+0x1a33b, %rdi
nop
nop
nop
dec %r8
mov $125, %rcx
rep movsw
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x14a7d, %r14
nop
nop
nop
nop
add %r10, %r10
mov $0x6162636465666768, %rax
movq %rax, %xmm4
vmovups %ymm4, (%r14)
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_D_ht+0x1fbb, %rsi
lea addresses_WT_ht+0x16773, %rdi
clflush (%rdi)
nop
nop
add $10856, %r12
mov $112, %rcx
rep movsw
xor %r8, %r8
lea addresses_normal_ht+0x176bb, %r14
clflush (%r14)
nop
sub %r12, %r12
movb (%r14), %al
nop
nop
nop
nop
nop
sub $37610, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %r8
push %rdi

// Load
lea addresses_US+0x1503b, %r12
cmp $10028, %r8
mov (%r12), %rdi
nop
and $335, %rdi

// Faulty Load
lea addresses_WT+0x1b3b, %r12
nop
sub $21796, %r15
vmovups (%r12), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r14
lea oracles, %r15
and $0xff, %r14
shlq $12, %r14
mov (%r15,%r14,1), %r14
pop %rdi
pop %r8
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': True, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 7, 'size': 1, 'same': True, 'NT': False}}
{'44': 3216, '46': 12876, '00': 5737}
46 00 46 46 46 46 46 00 46 46 00 46 44 00 46 46 46 46 44 46 46 00 00 46 44 00 46 46 46 00 46 46 46 46 00 46 00 00 00 00 46 44 46 46 44 00 00 46 00 46 46 00 46 44 46 00 44 00 46 46 00 46 46 46 46 46 46 46 44 46 46 00 46 00 46 00 46 46 46 46 00 46 46 00 00 46 46 46 46 46 46 00 00 46 00 44 46 46 00 46 46 46 46 46 46 46 00 00 00 00 44 46 46 46 46 46 46 00 46 46 46 00 46 46 44 46 46 44 00 46 00 46 46 00 46 46 44 46 46 46 46 00 46 46 44 00 46 44 46 46 46 46 46 00 44 46 00 44 46 46 46 00 46 46 44 46 46 44 46 00 00 00 46 46 00 46 44 00 46 46 46 46 46 46 44 46 46 44 00 46 46 46 46 44 46 46 46 46 00 44 46 00 44 46 46 46 46 44 46 46 00 46 46 46 00 46 46 46 00 46 46 46 44 00 46 44 00 46 00 46 00 46 46 46 46 44 00 46 46 46 46 46 46 46 46 46 44 46 46 00 46 46 44 00 00 00 00 46 00 46 46 44 46 46 46 00 00 44 46 00 46 00 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 00 00 46 00 46 44 46 46 00 46 00 46 00 00 46 00 46 46 46 00 00 46 46 44 46 00 00 46 46 44 46 00 44 00 00 00 46 46 44 46 46 46 46 46 46 46 46 44 46 46 44 46 00 44 46 00 00 46 00 00 00 46 00 00 44 46 00 00 00 46 00 00 00 46 46 46 46 46 46 46 46 46 00 00 46 46 46 00 46 46 00 44 46 00 44 46 46 46 46 46 00 46 00 00 46 46 46 00 46 00 46 00 46 46 00 00 46 46 44 00 46 46 00 00 46 46 46 44 00 46 46 46 46 00 46 46 44 46 46 44 46 46 00 46 46 46 00 46 46 46 46 46 46 00 00 46 46 46 46 44 46 46 46 00 46 44 00 46 44 46 46 46 46 00 46 46 46 46 44 46 46 44 46 46 46 00 46 00 44 46 46 00 46 46 46 46 46 44 46 00 46 00 46 46 46 46 00 46 00 46 00 46 46 46 00 00 46 00 44 46 00 46 46 46 46 46 00 00 46 46 44 46 46 00 46 00 00 00 46 44 46 00 46 46 00 46 46 00 46 00 00 44 46 46 44 46 46 44 46 46 46 46 46 00 46 46 44 00 46 00 00 46 44 00 00 46 46 00 44 46 46 46 46 46 46 46 46 44 46 46 46 46 46 00 00 00 46 46 44 46 46 46 00 46 44 00 46 44 00 46 00 46 46 00 46 46 44 00 46 44 00 00 44 46 46 46 46 46 44 00 00 44 46 46 44 46 46 44 46 00 46 46 46 44 00 46 44 00 46 46 00 46 00 00 44 46 46 44 00 00 46 46 46 44 00 46 44 46 00 46 46 44 46 46 46 46 46 44 46 00 44 00 46 44 46 46 44 46 46 46 00 46 00 46 46 44 46 46 46 00 46 46 46 00 46 46 46 46 46 46 44 46 46 46 46 46 46 00 46 46 46 46 46 46 00 00 00 46 46 00 46 44 46 46 46 46 00 46 46 46 46 00 00 00 46 46 44 46 46 46 46 44 46 46 44 46 00 00 00 00 46 46 00 44 00 46 46 46 46 44 00 46 46 00 00 46 46 00 44 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 44 46 46 46 46 46 46 46 46 00 46 46 00 46 00 46 00 00 46 46 46 00 00 46 46 46 46 46 46 44 46 00 44 46 46 00 00 46 44 46 00 46 46 46 46 46 46 46 46 46 00 00 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 46 44 46 00 44 00 00 44 00 46 44 46 00 46 46 46 46 00 46 00 00 00 44 46 46 00 46 00 44 00 46 00 46 00 00 46 46 44 46 46 44 00 00 44 46 46 46 00 44 46 46 46 46 46 46 00 46 00 46 46 44 46 00 00 46 46 44 00 46 00 46 46 44 46 46 46 00 00 44 00 46 46 46 46 00 46 46 46 46 46 44 46 46 46 46 00 00 46 44 46 00 00 46 46 46 46 44 46 46 46 46 00 46 46 46 46 46 46 44 00 00 44 46 46 46 00 44 46 00 00 46 46 00 00 46 46 00 46 46 00 46 46 44 46 46 46 46
*/
