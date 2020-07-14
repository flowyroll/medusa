.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1489d, %rsi
lea addresses_WC_ht+0xe5f3, %rdi
nop
nop
nop
nop
add %r9, %r9
mov $21, %rcx
rep movsl
nop
nop
nop
nop
cmp $59962, %rdx
lea addresses_D_ht+0xa89d, %rsi
lea addresses_UC_ht+0x129bd, %rdi
clflush (%rdi)
cmp %r12, %r12
mov $87, %rcx
rep movsw
xor $5420, %r12
lea addresses_UC_ht+0x1e09d, %rdx
nop
nop
nop
nop
sub $4539, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%rdx)
nop
cmp $17141, %rcx
lea addresses_D_ht+0x1957d, %rsi
lea addresses_WC_ht+0x1569d, %rdi
nop
nop
xor %r11, %r11
mov $105, %rcx
rep movsl
nop
nop
nop
nop
add $33390, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_UC+0xfa7d, %rsi
nop
nop
nop
nop
add $32148, %r10
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_WT+0x1c47b, %r10
nop
nop
nop
nop
cmp $28132, %rdx
movw $0x5152, (%r10)
nop
nop
xor $29624, %r11

// Store
lea addresses_normal+0x1609d, %r10
nop
nop
nop
nop
sub %rbx, %rbx
movb $0x51, (%r10)
nop
nop
nop
nop
nop
xor %rbx, %rbx

// Faulty Load
lea addresses_WC+0x1489d, %r15
nop
cmp $48963, %r10
movups (%r15), %xmm1
vpextrq $1, %xmm1, %r11
lea oracles, %r15
and $0xff, %r11
shlq $12, %r11
mov (%r15,%r11,1), %r11
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'48': 2173, '00': 2436, '46': 17220}
46 00 46 46 46 46 46 00 46 46 46 46 46 46 48 46 48 46 46 46 46 46 46 46 00 46 00 46 46 48 46 46 46 46 46 46 46 46 00 46 46 46 48 46 00 46 48 46 46 46 00 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 48 46 48 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 00 46 48 46 46 48 46 48 46 46 46 46 48 46 46 46 46 46 46 46 46 46 48 46 46 46 46 46 00 46 00 46 46 46 46 46 00 46 00 46 46 46 46 00 46 00 46 46 00 46 46 46 46 48 46 46 48 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 00 46 48 46 00 46 48 46 48 46 00 46 00 46 00 46 48 46 46 46 48 46 46 00 46 00 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 46 46 46 46 48 46 46 46 46 46 46 46 46 00 46 48 46 00 46 46 46 46 46 46 46 46 00 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 46 00 46 00 46 46 46 46 46 46 46 46 46 46 00 46 48 46 46 46 46 48 46 46 48 46 46 48 46 46 46 46 48 46 48 46 46 46 46 46 46 46 46 46 00 46 00 46 46 46 46 46 46 46 46 00 46 46 48 46 46 00 46 46 46 46 46 48 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 46 46 46 46 46 46 46 48 46 46 00 46 46 46 46 46 46 46 46 46 00 46 00 46 46 46 46 46 46 46 46 00 46 46 46 00 46 00 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 48 46 46 00 46 46 00 46 46 46 48 46 46 46 46 46 46 46 00 46 00 46 46 46 46 46 00 46 46 46 48 46 00 46 48 46 46 46 00 46 46 46 46 46 46 46 46 48 46 48 46 46 46 46 46 46 46 46 46 00 46 46 46 00 46 48 46 46 00 46 46 48 46 46 48 46 46 46 46 46 46 48 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 00 46 00 46 46 46 46 46 46 46 46 46 48 46 48 46 46 48 46 46 46 00 46 46 48 46 46 46 46 46 46 46 00 46 46 46 00 46 00 46 46 46 46 46 46 46 00 46 00 46 48 46 46 00 46 46 46 46 46 46 46 46 00 46 46 46 48 46 48 46 46 48 46 00 46 46 46 48 46 00 46 00 46 46 46 46 46 46 46 00 46 46 46 46 46 46 00 46 46 48 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 00 46 00 46 48 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 48 46 46 00 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 00 46 00 46 46 46 46 48 46 46 46 48 46 46 00 46 00 46 00 46 48 46 00 46 00 46 46 46 46 46 46 46 46 46 46 48 46 46 48 46 00 46 00 46 46 46 48 46 46 46 46 00 46 46 46 48 46 00 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 00 46 48 46 46 46 46 48 46 48 46 46 48 46 00 46 48 46 46 48 46 46 46 46 00 46 00 46 46 48 46 46 46 46 48 46 46 00 46 00 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 00 46 00 46 46 46 48 46 00 46 48 46 48 46 46 46 46 46 46 46 00 46 48 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 48 46 00 46 46 46 46 46 46 46 46 46 48 46 46 46 46 46 48 46 00 46 00 46 00 46 46 46 46 46 48 46 46 48 46 46 46 46 48 46 46 46 46 46 46 46 46 46 48 46 48 46 46 46 46 46 46 46 46 46 48 46 46 48 46 46 46 46 00 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 00 46
*/
