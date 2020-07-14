.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1302f, %rsi
lea addresses_WT_ht+0x15c2f, %rdi
clflush (%rsi)
nop
nop
cmp %rdx, %rdx
mov $54, %rcx
rep movsw
nop
nop
nop
nop
sub %r10, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %rbp
push %rdi

// Store
lea addresses_D+0xa1af, %r15
nop
cmp $25965, %r12
mov $0x5152535455565758, %r11
movq %r11, %xmm7
movups %xmm7, (%r15)
nop
nop
nop
nop
nop
inc %r10

// Load
lea addresses_WT+0x1902f, %r10
add %rbp, %rbp
vmovups (%r10), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r12
xor $59899, %r11

// Faulty Load
lea addresses_US+0xdf2f, %r15
nop
nop
nop
dec %r10
mov (%r15), %di
lea oracles, %r15
and $0xff, %rdi
shlq $12, %rdi
mov (%r15,%rdi,1), %rdi
pop %rdi
pop %rbp
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'00': 63}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
