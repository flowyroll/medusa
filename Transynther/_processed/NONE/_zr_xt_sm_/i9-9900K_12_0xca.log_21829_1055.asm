.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x15cf1, %rsi
lea addresses_D_ht+0xa281, %rdi
nop
nop
nop
nop
nop
add $47031, %r14
mov $66, %rcx
rep movsl
nop
cmp $7937, %rbp
lea addresses_WT_ht+0x11157, %r9
nop
nop
nop
nop
cmp %rsi, %rsi
movl $0x61626364, (%r9)
nop
nop
nop
xor $16493, %rdi
lea addresses_UC_ht+0x5379, %rsi
nop
and %rbp, %rbp
mov $0x6162636465666768, %r9
movq %r9, %xmm0
vmovups %ymm0, (%rsi)
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0xe279, %rsi
nop
nop
nop
xor $61400, %r14
mov (%rsi), %di
nop
nop
and $60729, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi

// Load
lea addresses_D+0xf889, %rsi
clflush (%rsi)
nop
add $28198, %r14
vmovups (%rsi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r11
nop
nop
nop
nop
xor $29117, %r14

// Store
lea addresses_PSE+0x2b53, %r9
nop
nop
dec %r15
movb $0x51, (%r9)
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_WT+0xac79, %r14
nop
nop
and $513, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
movups %xmm1, (%r14)
nop
nop
nop
and $53871, %r15

// Faulty Load
lea addresses_WT+0xac79, %rdi
nop
nop
add $15320, %r11
mov (%rdi), %ecx
lea oracles, %r15
and $0xff, %rcx
shlq $12, %rcx
mov (%r15,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': True, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 2}, 'dst': {'same': True, 'type': 'addresses_D_ht', 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'00': 5620, '58': 16209}
00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 00 58 00 58 58 00 58 00 58 00 58 58 58 58 00 58 00 58 58 00 58 58 58 58 58 58 00 00 58 58 58 00 58 00 58 58 58 00 00 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 00 58 00 58 58 58 58 00 58 58 58 58 58 00 58 00 58 00 58 58 00 58 00 58 58 58 58 58 58 58 00 58 00 00 58 58 58 00 58 58 58 00 58 58 00 58 00 58 58 58 00 00 58 58 00 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 00 58 58 58 58 58 00 58 58 58 00 00 58 00 58 58 00 58 00 58 58 58 58 00 00 58 58 58 00 58 58 58 58 00 58 58 00 58 58 58 00 58 58 00 58 58 58 00 58 58 00 58 58 00 00 58 58 58 00 58 58 58 00 58 00 58 00 00 58 58 58 58 00 00 58 58 58 58 58 00 58 00 00 58 58 58 58 58 58 58 58 58 00 00 58 58 00 58 00 00 00 00 58 58 58 00 58 58 58 58 58 58 58 00 00 58 58 00 58 58 58 58 58 58 58 00 58 00 00 58 58 00 00 58 58 58 00 58 58 58 58 00 58 00 58 58 58 58 58 00 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 00 58 00 00 00 58 00 58 58 00 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 00 00 58 58 58 58 58 58 00 58 00 58 58 58 00 58 58 00 58 58 58 58 58 58 00 00 58 58 58 58 00 58 00 58 58 58 58 58 00 58 58 58 00 58 00 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 00 58 00 58 58 58 00 58 58 58 00 58 58 58 58 00 58 58 00 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 00 00 00 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 00 58 00 00 58 00 58 58 00 00 58 58 58 00 58 58 00 58 58 58 58 58 58 00 58 00 00 58 58 58 58 58 00 58 58 58 00 00 58 00 58 00 00 58 58 58 58 58 58 58 00 00 58 00 00 00 00 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 00 58 58 58 58 58 58 58 00 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 00 00 58 00 58 58 58 58 00 00 58 58 58 00 58 58 58 58 58 58 58 58 58 00 00 00 58 58 00 58 58 58 00 58 00 00 00 58 00 58 00 00 58 58 58 58 58 58 00 58 00 00 58 00 58 58 58 00 58 58 00 58 00 00 58 58 58 00 58 58 58 00 58 58 58 58 58 00 58 00 58 00 58 58 00 58 58 58 58 58 00 00 58 58 58 58 58 00 58 58 00 58 58 00 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 00 58 00 00 58 58 58 58 58 00 58 58 00 00 00 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 00 00 58 58 58 00 58 58 58 00 00 58 58 00 58 00 00 58 58 58 58 58 00 58 00 58 58 00 58 58 58 58 00 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 00 58 58 58 00 00 58 58 58 00 00 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 00 00 58 58 00 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 00 58 00 58 00 58 00 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 00 00 58 00 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 00 58 58 00 58 00 58 00 58 00 58 58 58 00 58 58
*/
